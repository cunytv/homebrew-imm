require "download_strategy"
class GitHubPrivateRepositoryDownloadStrategy < CurlDownloadStrategy
  require "utils/formatter"
  require "utils/github"
  
  def initialize(url, name, version, **meta)
    super
    parse_url_pattern
    set_github_token
  end
  
  def parse_url_pattern
    tarball_pattern = %r{https://github.com/([^/]+)/([^/]+)/archive/refs/tags/(\S+)}
    release_pattern = %r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)}
    
    if match = url.match(tarball_pattern)
      _, @owner, @repo, @tag = *match
      @tarball = true
    elsif match = url.match(release_pattern)
      _, @owner, @repo, @tag, @filename = *match
      @tarball = false
    else
      raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Repository."
    end
  end

  def download_url
    if @tarball
      "https://#{@github_token}@github.com/#{@owner}/#{@repo}/archive/refs/tags/#{@tag}"
    else
      "https://#{@github_token}@api.github.com/repos/#{@owner}/#{@repo}/releases/assets/#{asset_id}"
    end
  end

  private

  def _fetch(url:, resolved_url:, timeout:)
    headers = ["Accept: application/octet-stream"] unless @tarball
    curl_download download_url, *headers, to: temporary_path, timeout: timeout
  end
  
  def set_github_token
    @github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"]
    unless @github_token
      raise CurlDownloadStrategyError, "Environmental variable HOMEBREW_GITHUB_API_TOKEN is required."
    end
    validate_github_repository_access!
  end

  def validate_github_repository_access!
    # Test access to the repository
    GitHub.repository(@owner, @repo)
  rescue GitHub::HTTPNotFoundError
    # We only handle HTTPNotFoundError here,
    # becase AuthenticationFailedError is handled within util/github.
    message = <<~EOS
      HOMEBREW_GITHUB_API_TOKEN can not access the repository: #{@owner}/#{@repo}
      This token may not have permission to access the repository or the url of formula may be incorrect.
    EOS
    raise CurlDownloadStrategyError, message
  end

  def asset_id
    @asset_id ||= resolve_asset_id unless @tarball
  end

  def resolve_asset_id
    release_metadata = fetch_release_metadata
    assets = release_metadata["assets"].select { |a| a["name"] == @filename }
    raise CurlDownloadStrategyError, "Asset file not found." if assets.empty?
    assets.first["id"]
  end

  def fetch_release_metadata
    GitHub.get_release(@owner, @repo, @tag)
  end
end

# GitHubPrivateRepositoryReleaseDownloadStrategy downloads tarballs from GitHub
# Release assets. To use it, add
# `:using => GitHubPrivateRepositoryReleaseDownloadStrategy` to the URL section of
# your formula. This download strategy uses GitHub access tokens (in the
# environment variables HOMEBREW_GITHUB_API_TOKEN) to sign the request.
class GitHubPrivateRepositoryReleaseDownloadStrategy < GitHubPrivateRepositoryDownloadStrategy

  def parse_url_pattern
    url_pattern = %r{https://github.com/([^/]+)/([^/]+)/releases/download/([^/]+)/(\S+)}
    unless match = url.match(url_pattern)
      raise CurlDownloadStrategyError, "Invalid URL pattern for GitHub Release."
    end
    _, @owner, @repo, @tag, @filename = *match
    @tarball = false
  end
end
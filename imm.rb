require 'formula'

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url "https://github.com/cunytv/imm/archive/refs/tags/V0.2.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 "5bf9538424255cec08bc631d7c3c4d124cf8fd670d50b3ec373807e70a1e974b"
  head 'https://github.com/cunytv/imm.git'

  depends_on 'mediamicroservices/mm/mm'
  depends_on 'openai-whisper'
  depends_on 'sfk'

  def install
    bin.install "import_prepped"
    bin.install "omneon2resourcespace"
    bin.install "storagereport"
    bin.install "makeomneon"
    bin.install "youtube_delivery/ftpcleanup"
    bin.install "youtube_delivery/ftpscan"
    bin.install "youtube_delivery/uploadyoutube"
    bin.install "cleanupstudio"
    bin.install "lookfornew"
    bin.install "uploadia"
    bin.install "uploadiatemp"
    bin.install "makedn"
    bin.install "captions/vtt2xmeml"
    bin.install "remove_sdtb"
    bin.install "fm2pbcore/fm2pbcore.xsl"
    bin.install "fm2pbcore/fmpbcore"
    bin.install "delivercaptions"
    bin.install "psip_handling/psipmerger"
    bin.install "psip_handling/psipmerger.xsl"
    bin.install "restructurerawfootage.py"
    bin.install "studiochecksum.py"
    bin.install "ytsum.py"
    bin.install "ingestremote.py"
    bin.install "ingestremote2.py"
    bin.install "detectrecentlyinserteddrives.py"
  end
end

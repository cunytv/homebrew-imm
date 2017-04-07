require 'formula'

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  version 'v0.1'
  url 'https://github.com/cunytv/imm.git', :branch => 'master'
  head 'https://github.com/cunytv/imm.git'

  depends_on 'mediamicroservices/mm/mm'

  def install
    bin.install "omneon2resourcespace"
    bin.install "storagereport"
    bin.install "youtube_delivery/ftpcleanup"
    bin.install "youtube_delivery/ftpscan"
    bin.install "cleanupstudio"
    bin.install "lookfornew"
  end
end

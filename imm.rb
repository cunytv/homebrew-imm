require 'formula'

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  version 'v0.1'
  url 'https://github.com/cunytv/imm.git', :branch => 'master'
  head 'https://github.com/cunytv/imm.git'
  revision 3

  depends_on 'mediamicroservices/mm/mm'

  def install
    bin.install "import_prepped"
    bin.install "omneon2resourcespace"
    bin.install "storagereport"
    bin.install "youtube_delivery/ftpcleanup"
    bin.install "youtube_delivery/ftpscan"
    bin.install "youtube_delivery/uploadyoutube"
    bin.install "cleanupstudio"
    bin.install "lookfornew"
    bin.install "uploadia"
    bin.install "captions/vtt2xmeml"
  end
end

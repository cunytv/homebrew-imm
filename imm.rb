require 'formula'

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url 'https://github.com/cunytv/imm/archive/v0.1.zip'
  sha256 'a5d72163fd239ed70218dab28f4403cc9744ae61a870d94c17ac622d2e2ffb3f'

  head 'https://github.com/cunytv/imm.git'

  depends_on 'mediamicroservices/mm/mm'

  def install
    bin.install "fm2resourcespace/fm2rs"
    bin.install "fm2resourcespace/fmp2resourcespace.xsl"
    bin.install "QueryResourceSpace.sh"
    bin.install "storagereport"
    bin.install "youtube_delivery/ftpcleanup"
    bin.install "youtube_delivery/ftpscan"
  end
end

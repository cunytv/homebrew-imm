require "formula"
#require_relative "../custom_download_strategy.rb"

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url "https://github.com/cunytv/imm/archive/refs/tags/v0.9.11.tar.gz"
  sha256 "1bc8dc102a394ef2818696264295cc01a7d24a0cfdaf7889fe5770af3e86c408"
  head 'https://github.com/cunytv/imm.git'
  revision 1

  depends_on 'mediamicroservices/mm/mm'
  depends_on 'openai-whisper'
  depends_on 'sfk'

  def install
    bin.install "resourcespace/import_prepped"
    bin.install "omneon2resourcespace"
    bin.install "storagereport"
    bin.install "makeomneon"
    bin.install "youtube_delivery/ftpcleanup"
    bin.install "youtube_delivery/ftpscan"
    bin.install "youtube_delivery/uploadyoutube"
    bin.install "cleanupstudio"
    bin.install "cunymediaids.py"
    bin.install "lookfornew"
    bin.install "uploadia"
    bin.install "uploadiatemp"
    bin.install "makedn"
    bin.install "captions/vtt2xmeml"
    bin.install "remove_sdtb"
    bin.install "fm2pbcore/fm2pbcore.xsl"
    bin.install "fm2pbcore/fmpbcore"
    bin.install "delivercaptions"
    bin.install "ltosearch"
    bin.install "psip_handling/psipmerger"
    bin.install "psip_handling/psipmerger.xsl"
    bin.install "restructurerawfootage.py"
    bin.install "studiochecksum.py"
    bin.install "ytsum.py"
    bin.install "ingestremote_old.py"
    bin.install "ingestremote.py"
    bin.install "detectrecentlyinserteddrives.py"
    bin.install "ingestcommands.py"
    bin.install "restructurepackage.py"
    bin.install "validateuserinput.py"
    bin.install "sendnetworkmail.py"
    bin.install "dropboxuploadsession.py"
    bin.install "detectiphone.py"
    bin.install "downloadlatestiphonemedia.scpt"
    bin.install "remote_resource_space_ingest.php"
  end
end

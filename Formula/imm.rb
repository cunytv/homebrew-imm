require "formula"
#require_relative "../custom_download_strategy.rb"

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url "https://github.com/cunytv/imm/archive/refs/tags/v0.9.10.tar.gz"
  sha256 "be00eb3f0ad5bdd8941ec6b088fa42a4c54692fcaa6e175e26293a6fba96e1b7"
  head 'https://github.com/cunytv/imm.git'
  revision 2

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
  end
end

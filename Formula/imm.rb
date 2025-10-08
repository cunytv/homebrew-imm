require "formula"
#require_relative "../custom_download_strategy.rb"

#use this link to download tar.gz package, replace with corresponding version: 
#https://codeload.github.com/cunytv/imm/tar.gz/refs/tags/v0.9.13

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url "https://github.com/cunytv/imm/archive/refs/tags/v0.9.14.tar.gz"
  sha256 "cbf1ab5d999c0f9ee7ab461262ace90a897994975daa60307f95f5b8b2bda662"
  head "https://github.com/cunytv/imm.git", branch: "main"
  #revision 1

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
    bin.install "cunymediaids.php"
    bin.install "movestudio"
    bin.install "multiprogressbar.py"
    bin.install "filetype.py"
  end
end

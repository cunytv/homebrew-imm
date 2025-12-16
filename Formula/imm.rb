require "formula"
#require_relative "../custom_download_strategy.rb"

#use this cmd to download tar.gz package, replace with corresponding version: 
# curl -L -o /Users/aidagarrido/Downloads/imm-v09.17.tar.gz https://github.com/cunytv/imm/archive/refs/tags/v09.17.tar.gz

class Imm < Formula
  homepage 'https://github.com/cunytv/imm'
  url "https://github.com/cunytv/imm/archive/refs/tags/v0.9.17.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  head "https://github.com/cunytv/imm.git", branch: "main"
  #revision 3

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
    bin.install "movestudio"
    bin.install "multiprogressbar.py"
    bin.install "generateDBphotofolders.py"
    bin.install "filetype.py"
    bin.install "longpoll.py"
    bin.install "resourcespace/longpoll_photo_files.py"
    bin.install "resourcespace/longpoll_remote_folders.py"
    bin.install "resourcespace/update_db_link_by_folder.php"
    bin.install "resourcespace/update_db_link_by_title.php"
    
  end
end

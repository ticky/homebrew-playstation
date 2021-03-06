class HdlDump < Formula
  desc "Install games in HDLoader format to APA-formatted hard drive"
  homepage "https://github.com/AKuHAK/hdl-dump"
  url "https://github.com/AKuHAK/hdl-dump.git", revision: "92213b57d0c6a89d14d01d5a71bedb2c92ebd421"
  version "2020-07-27T400351Z"
  revision 1

  head "https://github.com/AKuHAK/hdl-dump.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/hdl_dump-2020-07-27T400351Z_1"
    cellar :any_skip_relocation
    sha256 "d7d97d9fc8390342bdd7d09561e6e9bcdf22474b9a4ff40da4e3863f2b6c1249" => :catalina
    sha256 "cacb765fcd0fd928b613fd276f9aac9c6457735461f9d6f51edc16f3bd283b68" => :x86_64_linux
  end

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

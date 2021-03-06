class HdlDump < Formula
  desc "Install games in HDLoader format to APA-formatted hard drive"
  homepage "https://github.com/AKuHAK/hdl-dump"
  url "https://github.com/AKuHAK/hdl-dump.git", revision: "5aa2bfdaaa6da57e30a65d7a41c6aca04f68d870"
  version "2020-07-27T400351Z"
  revision 2

  head "https://github.com/AKuHAK/hdl-dump.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/hdl_dump-2020-07-27T400351Z_1"
    sha256 cellar: :any_skip_relocation, catalina:     "d7d97d9fc8390342bdd7d09561e6e9bcdf22474b9a4ff40da4e3863f2b6c1249"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cacb765fcd0fd928b613fd276f9aac9c6457735461f9d6f51edc16f3bd283b68"
  end

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

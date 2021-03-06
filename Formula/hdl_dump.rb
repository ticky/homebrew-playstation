class HdlDump < Formula
  desc "Install games in HDLoader format to APA-formatted hard drive"
  homepage "https://github.com/AKuHAK/hdl-dump"
  url "https://github.com/AKuHAK/hdl-dump.git", revision: "5aa2bfdaaa6da57e30a65d7a41c6aca04f68d870"
  version "2020-07-27T400351Z"
  revision 2

  head "https://github.com/AKuHAK/hdl-dump.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/hdl_dump-2020-07-27T400351Z_2"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "9f270a3ff12b3d0d497282666b850f5cf54d465499cbcb572627610d1f9d887d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9b9623f6147e686915746e7c347a30dfc8205047435a3bef843414a87067e1a1"
  end

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

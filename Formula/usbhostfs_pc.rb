class UsbhostfsPc < Formula
  desc "PC side of the PSP USB Host filing system"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/usbhostfs_pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "deb730db2b9d0fc69c89daa14e2196de92559cae"
  version "2020-06-24T131548Z"

  head "https://github.com/pspdev/psplinkusb.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/usbhostfs_pc-2020-06-24T131548Z"
    rebuild 1
    sha256 cellar: :any,                 catalina:     "8b13ec68e482289908338a727ba11cd2835d6a82327173e14ec202faa9ca2a29"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c987cf5478a96e99e8c8646541a563ccb2e0d1bf8b8bed813aa8fb2c977ccefd"
  end

  depends_on "libusb-compat"

  def install
    cd "usbhostfs_pc" do
      system "make"
      bin.install "usbhostfs_pc"
    end
  end

  test do
    system "echo \"help\nexit\" | #{bin}/usbhostfs_pc | grep -- \"-= Help =-\""
  end
end

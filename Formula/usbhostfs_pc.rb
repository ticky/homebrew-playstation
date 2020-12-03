class UsbhostfsPc < Formula
  desc "PC side of the PSP USB Host filing system"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/usbhostfs_pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "deb730db2b9d0fc69c89daa14e2196de92559cae"
  version "2020-06-24T131548Z"

  head "https://github.com/pspdev/psplinkusb.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/usbhostfs_pc-2020-06-24T131548Z"
    cellar :any
    sha256 "b15e8197344179193ced7fc3c14438aab886be45ffcd868fdcb30b9e6af76489" => :catalina
    sha256 "f562e4a2006f1e3ffe9c1033276b70663147319c9860ccfe78b5b11bb6e1eeef" => :x86_64_linux
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

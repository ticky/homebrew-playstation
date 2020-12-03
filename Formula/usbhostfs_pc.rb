class UsbhostfsPc < Formula
  desc "PC side of the PSP USB Host filing system"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/usbhostfs_pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "deb730db2b9d0fc69c89daa14e2196de92559cae"
  version "2020-06-24T131548Z"

  head "https://github.com/pspdev/psplinkusb.git"

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

class UsbhostfsPc < Formula
  desc "PC side of the PSP USB Host filing system"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/usbhostfs_pc"
  url "https://github.com/pspdev/psplinkusb.git", :revision => "4306f3f12de1bf1af91f5b8d55bc1ca631f831dc"
  version "2015-12-15T08:39:18Z"

  head "https://github.com/pspdev/psplinkusb.git"

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

class Remotejoy < Formula
  desc "PSP Remote control program"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/tools/remotejoy/pc"
  url "https://github.com/pspdev/psplinkusb.git", :revision => "42579d9c6c29d19f1cdb73501e246ac638b00e15"
  version "2015-12-16T07:52:54Z"

  head "https://github.com/pspdev/psplinkusb.git"

  depends_on "sdl"
  depends_on "usbhostfs_pc"

  def install
    cd "tools/remotejoy/pcsdl" do
      system "make"
      bin.install "remotejoy"
    end
  end

  test do
    system bin/"remotejoy", "-h"
  end
end

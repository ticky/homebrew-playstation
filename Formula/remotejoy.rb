class Remotejoy < Formula
  desc "PSP Remote control program"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/tools/remotejoy/pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "42579d9c6c29d19f1cdb73501e246ac638b00e15"
  version "2015-12-16T375254Z"

  head "https://github.com/pspdev/psplinkusb.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/remotejoy-2015-12-16T375254Z"
    cellar :any
    sha256 "9a7599deedccc74103613a17d23d4101ab9701c0e39df32e76e21bafd6a86a2f" => :catalina
    sha256 "d0841da0b288f42d7688dc0c7c5b829af69d0c6dd330f14860684817cc7e5472" => :x86_64_linux
  end

  depends_on "libusb-compat"
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

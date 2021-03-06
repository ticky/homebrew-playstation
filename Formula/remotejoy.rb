class Remotejoy < Formula
  desc "PSP Remote control program"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/tools/remotejoy/pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "deb730db2b9d0fc69c89daa14e2196de92559cae"
  version "2020-06-24T131548Z"

  head "https://github.com/pspdev/psplinkusb.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/remotejoy-2020-06-24T131548Z"
    sha256 cellar: :any, catalina:     "c4365833565caaa2b4821c9b5933773e93151f1786018b5bb0d7b79a854a44db"
    sha256 cellar: :any, x86_64_linux: "7fa0deda889564aa9d8624b50fa1945823df7922d3686c1c0db3a0cf179f5ae5"
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

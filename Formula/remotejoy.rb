class Remotejoy < Formula
  desc "PSP Remote control program"
  homepage "https://github.com/pspdev/psplinkusb/tree/master/tools/remotejoy/pc"
  url "https://github.com/pspdev/psplinkusb.git", revision: "deb730db2b9d0fc69c89daa14e2196de92559cae"
  version "2020-06-24T131548Z"

  head "https://github.com/pspdev/psplinkusb.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/remotejoy-2020-06-24T131548Z"
    rebuild 1
    sha256 cellar: :any,                 catalina:     "8c5bd354abef9d5711da0e3662fcf7673311b8d48e1f3f4bece66fa222322063"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f87686484bc43854257b318daaf719af06601a629a43f12122d226ffb8a52f14"
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

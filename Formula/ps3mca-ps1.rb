class Ps3mcaPs1 < Formula
  desc "A program to read and write PS1 memory card with the Memory Card Adaptor"
  homepage "https://github.com/ticky/ps3mca-ps1"
  url "https://github.com/ticky/ps3mca-ps1.git", :revision => "7f4dfc5a3c0502e03d97f9dc4ee6e227f71a1d2a"
  version "2017-06-10T02:28:45Z"

  head "https://github.com/ticky/ps3mca-ps1.git"

  depends_on "pkg-config" => :build
  depends_on "libusb"

  def install
    system "make"
    bin.install "ps3mca-ps1"
  end
end

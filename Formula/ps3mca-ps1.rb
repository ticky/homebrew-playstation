class Ps3mcaPs1 < Formula
  desc "Read and write PS1 memory cards with the Memory Card Adaptor"
  homepage "https://github.com/paolo-caroni/ps3mca-ps1"
  url "https://github.com/paolo-caroni/ps3mca-ps1.git", revision: "39226475d0783c17a45b34a1e0fe6d4e8db29a21"
  version "2018-06-23T07:23:56Z"

  head "https://github.com/paolo-caroni/ps3mca-ps1.git"

  depends_on "pkg-config" => :build
  depends_on "libusb"

  def install
    system "make"
    bin.install "ps3mca-ps1"
  end
end

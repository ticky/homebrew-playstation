class Ps3mcaPs1 < Formula
  desc "Read and write PS1 memory cards with the Memory Card Adaptor"
  homepage "https://github.com/paolo-caroni/ps3mca-ps1"
  url "https://github.com/paolo-caroni/ps3mca-ps1.git", revision: "adc90bb1954675310480613b600e011eccb51ebf"
  version "2020-03-29T111341Z"

  head "https://github.com/paolo-caroni/ps3mca-ps1.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/ps3mca-ps1-2020-03-29T111341Z"
    rebuild 1
    sha256 cellar: :any, catalina: "756ccd034bdf3b8a2b7e0fd060f41c4e871f961f0108b24f849d4b54e306b4de"
  end

  depends_on "pkg-config" => :build
  depends_on "libusb-compat"
  depends_on :macos

  def install
    system "make"
    bin.install "ps3mca-ps1"
  end
end

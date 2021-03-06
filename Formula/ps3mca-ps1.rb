class Ps3mcaPs1 < Formula
  desc "Read and write PS1 memory cards with the Memory Card Adaptor"
  homepage "https://github.com/paolo-caroni/ps3mca-ps1"
  url "https://github.com/paolo-caroni/ps3mca-ps1.git", revision: "adc90bb1954675310480613b600e011eccb51ebf"
  version "2020-03-29T111341Z"

  head "https://github.com/paolo-caroni/ps3mca-ps1.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/ps3mca-ps1-2020-03-29T111341Z"
    cellar :any
    sha256 "76a330055ae948bfb6080a866b2950965b5f70ac1ff009a9ccee31d9108466c0" => :catalina
  end

  depends_on "pkg-config" => :build
  depends_on "libusb-compat"
  depends_on :macos

  def install
    system "make"
    bin.install "ps3mca-ps1"
  end
end

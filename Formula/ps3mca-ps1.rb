class Ps3mcaPs1 < Formula
  desc "A program to read and write PS1 memory card with the Memory Card Adaptor"
  homepage "https://github.com/ticky/ps3mca-ps1"
  url "https://github.com/ticky/ps3mca-ps1.git", :revision => "10646745ab2c12c8c20595f77f371b8ec32872a1"
  version "2017-01-11T15:31:31Z"

  head "https://github.com/ticky/ps3mca-ps1.git"

  depends_on "libusb"

  def install
    cd "src" do
      system ENV.cc, "-g", "-Wall", "-lusb-1.0", "-o", "ps3mca-ps1", "main.c"
      bin.install "ps3mca-ps1"
    end
  end
end

class Paladin < Formula
  desc "Enhanced PAL to NTSC Converter for True PSX NTSC Conversion"
  homepage "https://github.com/ticky/paladin"
  url "https://github.com/ticky/paladin.git", tag: "v1.3"
  revision 1

  head "https://github.com/ticky/paladin.git"

  def install
    system "make"
    bin.install "paladin"
  end
end

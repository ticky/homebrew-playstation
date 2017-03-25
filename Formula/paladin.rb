class Paladin < Formula
  desc "Enhanced PAL to NTSC Converter for True PSX NTSC Conversion"
  homepage "https://github.com/ticky/paladin"
  url "https://github.com/ticky/paladin.git", :revision => "104bb50eaff769b089916107c12df99b2d1fcb93"
  version "1.2"

  head "https://github.com/ticky/paladin.git"

  def install
    system "make"
    bin.install "paladin"
  end
end

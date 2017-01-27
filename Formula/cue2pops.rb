class Cue2pops < Formula
  desc "BIN/CUE to IMAGE0.VCD conversion tool"
  homepage "https://github.com/ErikAndren/cue2pops-mac"
  url "https://github.com/ErikAndren/cue2pops-mac.git", :revision => "608aebf7f2d7ed7bf2510ed388daa3baec0ba2a4"
  version "2015-11-04T20:27:28Z"

  head "https://github.com/ErikAndren/cue2pops-mac.git"

  def install
    system "make"
    bin.install "cue2pops"
  end

  test do
    system bin/"cue2pops"
  end
end

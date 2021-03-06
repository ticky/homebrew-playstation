class Cue2pops < Formula
  desc "Utility to convert PlayStation ISOs for use with PS2 Popstation"
  homepage "https://github.com/ErikAndren/cue2pops-mac"
  url "https://github.com/ErikAndren/cue2pops-mac.git", revision: "608aebf7f2d7ed7bf2510ed388daa3baec0ba2a4"
  version "2015-11-04T502728Z"
  revision 1

  head "https://github.com/ErikAndren/cue2pops-mac.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/cue2pops-2015-11-04T502728Z_1"
    cellar :any_skip_relocation
    sha256 "7045d3efd0cd76d66d0fb164577fef31d19674da144ac6d3460ea5f323c7d5ba" => :catalina
  end

  depends_on :macos

  def install
    system "make"
    bin.install "cue2pops"
  end

  test do
    system bin/"cue2pops"
  end
end

class Paladin < Formula
  desc "Enhanced PAL to NTSC Converter for True PSX NTSC Conversion"
  homepage "https://github.com/ticky/paladin"
  url "https://github.com/ticky/paladin.git", tag: "v1.3"
  revision 1

  head "https://github.com/ticky/paladin.git"

  livecheck do
    url :url
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/paladin-1.3_1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "923aab64188fd4aab7eb795c8c4611a6e1a301ebc533f17d7a7d4acbfa2dc1fc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5e56e955445fcc0657baa0dfd91b0a1c0676842680476f2f0d86bf88c7143eba"
  end

  def install
    system "make"
    bin.install "paladin"
  end
end

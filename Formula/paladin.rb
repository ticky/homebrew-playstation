class Paladin < Formula
  desc "Enhanced PAL to NTSC Converter for True PSX NTSC Conversion"
  homepage "https://github.com/ticky/paladin"
  url "https://github.com/ticky/paladin.git", tag: "v1.3"
  revision 1

  head "https://github.com/ticky/paladin.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/paladin-1.3_1"
    sha256 cellar: :any_skip_relocation, catalina:     "cfa6406793d073ea13b3c302c0f67e11c26e4b995db3e0fb8a91e23d446c2b0b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8a0195ad8dd1af588dc6b26338f2751e6d4ccef59aa7e909a6b3970cb0f69df0"
  end

  def install
    system "make"
    bin.install "paladin"
  end
end

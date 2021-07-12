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
    rebuild 2
    sha256 cellar: :any_skip_relocation, catalina:     "51e297564a0bbf39639b70d5f360215c2fc48fd41f2b61b8b41d0996430e0f8d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ca4ee9788342647b172e1f1aa02277e934373756a07b54da9aad1ed392ed2ff5"
  end

  def install
    system "make"
    bin.install "paladin"
  end
end

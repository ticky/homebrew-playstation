class Pfsshell < Formula
  desc "Browse and edit PFS filesystems on APA-formatted hard drive"
  homepage "https://github.com/ps2homebrew/pfsshell"
  url "https://github.com/ps2homebrew/pfsshell.git", tag: "v1.1.1"
  revision 1

  head "https://github.com/ps2homebrew/pfsshell.git"

  livecheck do
    url :url
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/pfsshell-1.1.1_1"
    rebuild 2
    sha256 cellar: :any_skip_relocation, catalina:     "7e8e18aa765e772c5163d5272a41a8b90b777a2743ad98c116a8c40cc2492caa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cb9c9811ae9868528cd0043b207bffc28ffefb359bdad5a3546bd6b6d632e76b"
  end

  depends_on "meson" => :build
  depends_on "ninja" => :build

  def install
    system "meson", "build"

    cd "build" do
      system "meson", "compile"
      bin.install "pfsshell"
    end
  end

  test do
    system "echo \"help\nexit\" | #{bin}/pfsshell"
  end
end

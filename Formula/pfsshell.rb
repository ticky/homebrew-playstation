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
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "ba6b207b6acdffd71f8b9d6c77db1278541dafaf4b6ae935ad6df65a5e1934ec"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f5a0b10034f1957ca858e21b9e054b88cb01a1666fff748b16c9159ee5db5612"
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

class Pfsshell < Formula
  desc "Browse and edit PFS filesystems on APA-formatted hard drive"
  homepage "https://github.com/ps2homebrew/pfsshell"
  url "https://github.com/ps2homebrew/pfsshell.git", tag: "v1.1.1"
  revision 1

  head "https://github.com/ps2homebrew/pfsshell.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/pfsshell-1.1.1_1"
    cellar :any_skip_relocation
    sha256 "d1cdf106bd21148a34b609a35e7df1d39214364e3055d2f6e16fd651bf9ee16b" => :catalina
    sha256 "8eda785e237ae7618186219b15e3d5393a36e49aaa92d8d34e719936e2b735d9" => :x86_64_linux
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

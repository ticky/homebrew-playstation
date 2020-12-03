class Pfsshell < Formula
  desc "Browse and edit PFS filesystems on APA-formatted hard drive"
  homepage "https://github.com/ps2homebrew/pfsshell"
  url "https://github.com/ps2homebrew/pfsshell.git", tag: "v1.1.1"
  revision 1

  head "https://github.com/ps2homebrew/pfsshell.git"

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

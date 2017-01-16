class Pfsshell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  url "https://github.com/uyjulian/pfsshell.git", :revision => "7bd15910871a9f0c8a787a5540b38adfd9427993"
  version "2017-01-08T20:00:43Z"

  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    bin.install "pfsshell"
  end

  test do
    system "echo \"help\nexit\" | #{bin}/pfsshell"
  end
end

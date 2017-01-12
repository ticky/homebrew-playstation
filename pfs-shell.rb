class PfsShell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  version "2017-01-08T20:00:43Z"
  url "https://github.com/uyjulian/pfsshell.git", :revision => "7bd15910871a9f0c8a787a5540b38adfd9427993"

  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    bin.install "pfsshell"
  end
end

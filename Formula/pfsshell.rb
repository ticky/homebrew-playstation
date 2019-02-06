class Pfsshell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  url "https://github.com/uyjulian/pfsshell.git", :revision => "e2c5a6d90fffe2ef3c27608bf882fa7ad4decefd"
  version "2018-08-04T04:50:35Z"

  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    bin.install "pfsshell"
  end

  test do
    system "echo \"help\nexit\" | #{bin}/pfsshell"
  end
end

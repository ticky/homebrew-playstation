class Pfsshell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  url "https://github.com/uyjulian/pfsshell.git", :revision => "2b9d03bb78a67d812842f8456f475978e4328d08"
  version "2017-07-23T18:58:41Z"

  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    bin.install "pfsshell"
  end

  test do
    system "echo \"help\nexit\" | #{bin}/pfsshell"
  end
end

class PfsShell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    bin.install "pfsshell"
  end
end

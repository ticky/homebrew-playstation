class PsxMctool < Formula
  desc "Command-line tool to manipulate PlayStation memory card files"
  homepage "https://github.com/simias/psx-mctool"
  url "https://github.com/simias/psx-mctool.git", revision: "d9087b290e817363ce63fae1232ca282efb3e6c7"
  version "2016-10-16T462420Z"
  revision 1

  head "https://github.com/simias/psx-mctool.git"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

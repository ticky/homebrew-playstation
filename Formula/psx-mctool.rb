class PsxMctool < Formula
  desc "Command-line tool to manipulate PlayStation memory card files"
  homepage "https://github.com/simias/psx-mctool"
  url "https://github.com/simias/psx-mctool.git", revision: "d9087b290e817363ce63fae1232ca282efb3e6c7"
  version "2016-10-16T462420Z"
  revision 1

  head "https://github.com/simias/psx-mctool.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/psx-mctool-2016-10-16T462420Z_1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "7553817453876fedad753588d5d27f43ed218c35bd51f2d5d11af5e2787c8e81"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c2f487a3ee3ae87c3c6fd84f1363d7edec2d73ccb33a2ffc34cebc4e117dab00"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

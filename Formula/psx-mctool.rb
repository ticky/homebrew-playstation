class PsxMctool < Formula
  desc "Command-line tool to manipulate PlayStation memory card files"
  homepage "https://github.com/simias/psx-mctool"
  url "https://github.com/simias/psx-mctool.git", revision: "d9087b290e817363ce63fae1232ca282efb3e6c7"
  version "2016-10-16T462420Z"
  revision 1

  head "https://github.com/simias/psx-mctool.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/psx-mctool-2016-10-16T462420Z_1"
    cellar :any_skip_relocation
    sha256 "01d0cff524961c6a5a3e1a2f44ee888410e10709791c1c3c4fe60283715778d0" => :catalina
    sha256 "90d4a65237bc6bcf0807a650f7da3c1b9ef913bf6ce2d93b7cec3649212767aa" => :x86_64_linux
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end
end

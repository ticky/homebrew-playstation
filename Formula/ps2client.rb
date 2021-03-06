class Ps2client < Formula
  desc "CLI tools for communicating with uLaunchElf on PlayStation 2"
  homepage "https://github.com/ps2dev/ps2client"
  url "https://github.com/ps2dev/ps2client.git", revision: "92fcaf18aabf74daaed40bd50d428cce326a87c0"
  version "2018-10-18T440508Z"
  revision 1

  head "https://github.com/ps2dev/ps2client.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/ps2client-2018-10-18T440508Z_1"
    cellar :any_skip_relocation
    sha256 "4bbe65becedb8fd4e6e78620df1e45a78a4f43690e9caa65ea2ae45764547788" => :catalina
    sha256 "b9ee5bf9a7d6a2bbaf767ced51d5d017ff3997fd04ea78dbcb014839ceba69ea" => :x86_64_linux
  end

  def install
    system "make"
    bin.install "bin/fsclient", "bin/ps2client"
  end

  test do
    system "echo \"$(#{bin}/ps2client)\" | grep Usage"
  end
end

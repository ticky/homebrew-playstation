class Ps2client < Formula
  desc "CLI tools for communicating with uLaunchElf on PlayStation 2"
  homepage "https://github.com/ps2dev/ps2client"
  head "https://github.com/ps2dev/ps2client.git"

  def install
    system "make"
    bin.install "bin/fsclient", "bin/ps2client"
  end
end

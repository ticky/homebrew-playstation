class Ps2client < Formula
  desc "CLI tools for communicating with uLaunchElf on PlayStation 2"
  homepage "https://github.com/ps2dev/ps2client"
  url "https://github.com/ps2dev/ps2client.git", :revision => "11545a3d3b3b64f644fa6a2291c37e5daf1c31bc"
  version "2010-09-07T21:17:52Z"

  head "https://github.com/ps2dev/ps2client.git"

  def install
    system "make"
    bin.install "bin/fsclient", "bin/ps2client"
  end
end

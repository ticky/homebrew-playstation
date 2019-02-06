class Ps2client < Formula
  desc "CLI tools for communicating with uLaunchElf on PlayStation 2"
  homepage "https://github.com/ps2dev/ps2client"
  url "https://github.com/ps2dev/ps2client.git", :revision => "92fcaf18aabf74daaed40bd50d428cce326a87c0"
  version "2018-10-18T14:05:08Z"

  head "https://github.com/ps2dev/ps2client.git"

  def install
    system "make"
    bin.install "bin/fsclient", "bin/ps2client"
  end

  test do
    system "echo \"$(#{bin}/ps2client)\" | grep Usage"
  end
end

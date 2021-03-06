class Ps2client < Formula
  desc "CLI tools for communicating with uLaunchElf on PlayStation 2"
  homepage "https://github.com/ps2dev/ps2client"
  url "https://github.com/ps2dev/ps2client.git", revision: "92fcaf18aabf74daaed40bd50d428cce326a87c0"
  version "2018-10-18T440508Z"
  revision 1

  head "https://github.com/ps2dev/ps2client.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/ps2client-2018-10-18T440508Z_1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "ed17124e075ad3bc8f62b9330ceea06ab192a7fff70dd981e8b43c107a8eac8d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "60f790ea0d85c285bdf99f9395b9b0d37fbe7e5de434d899f948be2b593437b5"
  end

  def install
    system "make"
    bin.install "bin/fsclient", "bin/ps2client"
  end

  test do
    system "echo \"$(#{bin}/ps2client)\" | grep Usage"
  end
end

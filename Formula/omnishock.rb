class Omnishock < Formula
  desc "🎮 Something to do with game controllers!"
  homepage "https://github.com/ticky/omnishock"
  url "https://github.com/ticky/omnishock.git", tag: "v0.0.9"

  head "https://github.com/ticky/omnishock.git"

  livecheck do
    url :url
    strategy :github_latest
  end

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/omnishock-0.0.9"
    rebuild 2
    sha256 cellar: :any, catalina: "229bfcea85efcb0828dcd76578aa4918abb8c71c455be1cd7311d9ada214f253"
  end

  depends_on "rust" => :build
  # TODO: Remove this if udev stops being a problem
  depends_on :macos
  depends_on "sdl2"

  def install
    system "cargo", "install", *std_cargo_args
  end
end

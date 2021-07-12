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
    rebuild 1
    sha256 cellar: :any, catalina: "01795559708ee76aa7a4f6940ace4993ac6e3c8ae2eaae6bb7ca916caf956249"
  end

  depends_on "rust" => :build
  # TODO: Remove this if udev stops being a problem
  depends_on :macos
  depends_on "sdl2"

  def install
    system "cargo", "install", *std_cargo_args
  end
end

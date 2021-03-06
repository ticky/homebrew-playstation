class Omnishock < Formula
  desc "🎮 Something to do with game controllers!"
  homepage "https://github.com/ticky/omnishock"
  url "https://github.com/ticky/omnishock.git", tag: "v0.0.9"

  head "https://github.com/ticky/omnishock.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/omnishock-0.0.9"
    cellar :any
    sha256 "ef61d67925c00ae31ef15676bda159685e8508afb271d922c22b80e2b2a050ac" => :catalina
  end

  depends_on "rust" => :build
  # TODO: Remove this if udev stops being a problem
  depends_on :macos
  depends_on "sdl2"

  def install
    system "cargo", "install", *std_cargo_args
  end
end

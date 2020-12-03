class Omnishock < Formula
  desc "🎮 Something to do with game controllers!"
  homepage "https://github.com/ticky/omnishock"
  url "https://github.com/ticky/omnishock.git", tag: "v0.0.9"

  head "https://github.com/ticky/omnishock.git"

  depends_on "rust" => :build
  depends_on "sdl2"

  def install
    system "cargo", "install", *std_cargo_args
  end
end

class Omnishock < Formula
  desc "🎮 ¿¿¿ owo what’s this ???"
  homepage "https://github.com/ticky/omnishock"
  url "https://github.com/ticky/omnishock.git", tag: "v0.0.3"

  head "https://github.com/ticky/omnishock.git"

  depends_on "rust" => :build
  depends_on "sdl2"

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/omnishock"
  end
end

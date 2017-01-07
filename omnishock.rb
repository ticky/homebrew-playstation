class Omnishock < Formula
  desc "🎮 ¿¿¿ owo what’s this ???"
  homepage "https://github.com/ticky/omnishock"
  url "https://github.com/ticky/omnishock.git", :tag => "v0.0.2"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/omnishock"
  end
end

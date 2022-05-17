class Cisoplus < Formula
  desc "Tool for converting PSP ISO files to compressed CSO format"
  homepage "https://github.com/ticky/cisoplus"
  url "https://github.com/ticky/cisoplus.git", revision: "89d0c1bfff70e5d458c69213c922d2d656c0b1c7"
  version "2022-05-17T035542Z"

  head "https://github.com/ticky/cisoplus.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/cisoplus-2022-05-17T035542Z"
    sha256 cellar: :any_skip_relocation, big_sur:      "61f3c4ee9a940178698c54c19abaa9ba32af18d8a9fb9346aa6e2eaa027ac327"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "6edb6ddd6088cb80eacccebdbab26fd44443a5f8a3d17f8ddba1c03d09c5eb20"
  end

  def install
    bin.install "cisoplus.py" => "cisoplus"
  end

  test do
    system bin/"cisoplus"
  end
end

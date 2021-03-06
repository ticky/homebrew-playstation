class Cisoplus < Formula
  desc "Tool for converting PSP ISO files to compressed CSO format"
  homepage "https://github.com/ticky/cisoplus"
  url "https://github.com/ticky/cisoplus.git", revision: "901e7606973a09fa5f573f820d7351e8c91cedea"
  version "2015-01-15T442702Z"
  revision 1

  head "https://github.com/ticky/cisoplus.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/cisoplus-2015-01-15T442702Z_1"
    sha256 cellar: :any_skip_relocation, catalina:     "fe0fd99504a1b3b0b43f1bf6331fdc136cd6c49af49f3518a821f30f11808452"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "df3fd7237bcb3b61df2c46b54512e141cdece63b2654b3f96767bc4ecdcdf45a"
  end

  def install
    bin.install "cisoplus.py" => "cisoplus"
  end

  test do
    system bin/"cisoplus"
  end
end

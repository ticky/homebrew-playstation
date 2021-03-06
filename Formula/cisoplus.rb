class Cisoplus < Formula
  desc "Tool for converting PSP ISO files to compressed CSO format"
  homepage "https://github.com/ticky/cisoplus"
  url "https://github.com/ticky/cisoplus.git", revision: "901e7606973a09fa5f573f820d7351e8c91cedea"
  version "2015-01-15T442702Z"
  revision 1

  head "https://github.com/ticky/cisoplus.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/cisoplus-2015-01-15T442702Z_1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "d6d5876ab6631ad3d4002216ad7993dadfe052ba86b042ba28a3153e8522b5f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c47a4d0a6920c7fbc4bf2c25da614fad4dd5eebf202642e7984b875c9b640f8a"
  end

  def install
    bin.install "cisoplus.py" => "cisoplus"
  end

  test do
    system bin/"cisoplus"
  end
end

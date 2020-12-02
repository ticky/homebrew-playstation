class Cisoplus < Formula
  desc "Tool for converting PSP ISO files to compressed CSO format"
  homepage "https://github.com/ticky/cisoplus"
  url "https://github.com/ticky/cisoplus.git", revision: "901e7606973a09fa5f573f820d7351e8c91cedea"
  version "2015-01-15T14:27:02Z"

  head "https://github.com/ticky/cisoplus.git"

  def install
    bin.install "cisoplus.py" => "cisoplus"
  end

  test do
    system bin/"cisoplus"
  end
end

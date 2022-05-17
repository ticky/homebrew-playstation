class Cisoplus < Formula
  desc "Tool for converting PSP ISO files to compressed CSO format"
  homepage "https://github.com/ticky/cisoplus"
  url "https://github.com/ticky/cisoplus.git", revision: "89d0c1bfff70e5d458c69213c922d2d656c0b1c7"
  version "2022-05-17T035542Z"

  head "https://github.com/ticky/cisoplus.git"

  def install
    bin.install "cisoplus.py" => "cisoplus"
  end

  test do
    system bin/"cisoplus"
  end
end

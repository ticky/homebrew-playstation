class Popstation < Formula
  desc "Utility to convert PlayStation ISOs for use with PSP Popstation"
  homepage "https://github.com/ticky/popstation"
  url "https://github.com/ticky/popstation.git", :revision => "51365d05c757ee346f8f1c4b9ea2691a2b8be608"
  version "2017-03-19T07:24:14Z"

  head "https://github.com/ticky/popstation.git"

  depends_on "iniparser"

  def install
    system "make"
    bin.install "popstation", "popstation_md"
  end
end

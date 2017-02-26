class Popstation < Formula
  desc "Utility to convert PlayStation ISOs for use with PSP Popstation"
  homepage "https://github.com/ticky/popstation"
  url "https://github.com/ticky/popstation.git", :revision => "5136c0e73042b114f2c73439647be288b49fbc0d"
  version "2017-01-04T02:50:47Z"

  head "https://github.com/ticky/popstation.git"

  def install
    system "make"
    bin.install "popstation/popstation", "popstation_md/popstation_md"
  end
end

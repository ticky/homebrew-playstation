class PbpUtilities < Formula
  desc "Utilities for manipulating PSP executables"
  homepage "https://github.com/pspdev/pspsdk"
  url "https://github.com/pspdev/pspsdk.git", :revision => "cec2766db828b64aa91faf478ef2f837a2adedec"
  version "2014-03-25T19:55:30Z"

  head "https://github.com/pspdev/pspsdk.git"

  def install
    cd "tools" do
      system "cc", "-Wall", "-O3", "-o", "pack-pbp", "pack-pbp.c"
      system "cc", "-Wall", "-O3", "-o", "unpack-pbp", "unpack-pbp.c"
      bin.install "pack-pbp"
      bin.install "unpack-pbp"
    end
  end
end

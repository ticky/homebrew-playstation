class PbpUtilities < Formula
  desc "Utilities for manipulating PSP executables"
  homepage "https://github.com/pspdev/pspsdk"
  url "https://github.com/pspdev/pspsdk.git", revision: "7fc9d5704ed1cc3c243995b508690239d1466c05"
  version "2018-09-21T22:06:33Z"

  head "https://github.com/pspdev/pspsdk.git"

  def install
    cd "tools" do
      system ENV.cc, "-Wall", "-o", "pack-pbp", "pack-pbp.c"
      system ENV.cc, "-Wall", "-o", "unpack-pbp", "unpack-pbp.c"
      bin.install "pack-pbp"
      bin.install "unpack-pbp"
    end
  end
end

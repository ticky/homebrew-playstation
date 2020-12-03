class PbpUtilities < Formula
  desc "Utilities for manipulating PSP executables"
  homepage "https://github.com/pspdev/pspsdk"
  url "https://github.com/pspdev/pspsdk.git", revision: "7c6e46b48769750a758070205ef5d8c91700d5e3"
  version "2020-05-07T225041Z"

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

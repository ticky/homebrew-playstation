class PbpUtilities < Formula
  desc "Utilities for manipulating PSP executables"
  homepage "https://github.com/pspdev/pspsdk"
  url "https://github.com/pspdev/pspsdk.git", revision: "7c6e46b48769750a758070205ef5d8c91700d5e3"
  version "2020-05-07T225041Z"

  head "https://github.com/pspdev/pspsdk.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/pbp-utilities-2020-05-07T225041Z"
    sha256 cellar: :any_skip_relocation, catalina:     "b8fd1964dc969e751e8481db7a0b2d38a910431a745420f12a5594ea20cafc28"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fc562bc364f1ff495499f517fea9ca1c8edbccfa1f52b5c92b8f240dfc285c46"
  end

  def install
    cd "tools" do
      system ENV.cc, "-Wall", "-o", "pack-pbp", "pack-pbp.c"
      system ENV.cc, "-Wall", "-o", "unpack-pbp", "unpack-pbp.c"
      bin.install "pack-pbp"
      bin.install "unpack-pbp"
    end
  end
end

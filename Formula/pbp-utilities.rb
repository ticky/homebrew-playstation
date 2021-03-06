class PbpUtilities < Formula
  desc "Utilities for manipulating PSP executables"
  homepage "https://github.com/pspdev/pspsdk"
  url "https://github.com/pspdev/pspsdk.git", revision: "7c6e46b48769750a758070205ef5d8c91700d5e3"
  version "2020-05-07T225041Z"

  head "https://github.com/pspdev/pspsdk.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/pbp-utilities-2020-05-07T225041Z"
    rebuild 1
    sha256 cellar: :any_skip_relocation, catalina:     "d85ab30b59c034b3a015b898ff79c3d5d7e9bcc77f6c127459a44e146f6b5f13"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "104c28653a0885bb464188fe7227790a5c72a1b34b385e94b174a24f9ddd7824"
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

class HdlDump < Formula
  desc "CLI tool to interact with Open PS2 Loader over a network"
  homepage "https://github.com/AKuHAK/hdl-dump.git"
  url "https://github.com/AKuHAK/hdl-dump.git", :revision => "67e66ca0e0a0000563f75c573a046cb8614745ad"
  version "2018-07-22T14:45:53Z"

  head "https://github.com/AKuHAK/hdl-dump.git"

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

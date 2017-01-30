class HdlDump < Formula
  desc "CLI tool to interact with Open PS2 Loader over a network"
  homepage "https://github.com/AKuHAK/hdl-dump.git"
  url "https://github.com/AKuHAK/hdl-dump.git", :revision => "9d2b6969b962a17a1bb692ca55a868af7f77192b"
  version "2016-03-05T18:31:08Z"

  head "https://github.com/AKuHAK/hdl-dump.git"

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

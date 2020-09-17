class HdlDump < Formula
  desc "Install games in HDLoader format to APA-formatted hard drive"
  homepage "https://github.com/AKuHAK/hdl-dump"
  url "https://github.com/AKuHAK/hdl-dump.git", :revision => "92213b57d0c6a89d14d01d5a71bedb2c92ebd421"
  version "2020-07-27T10:03:51Z"

  head "https://github.com/AKuHAK/hdl-dump.git"

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end

  test do
    system "echo \"$(#{bin}/hdl_dump)\" | grep \"hdl_dump-\""
  end
end

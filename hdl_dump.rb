class HdlDump < Formula
  desc "CLI tool to interact with Open PS2 Loader over a network"
  homepage "https://bitbucket.org/AKuHAK/hdl-dump"
  url "https://bitbucket.org/AKuHAK/hdl-dump", :using => :hg, :revision => "a1b7ebcd0059e3c11645af5c92b46a9a934851b7"
  version "2016-03-05T18:31:08Z"

  head "https://bitbucket.org/AKuHAK/hdl-dump", :using => :hg

  def install
    system "make", "RELEASE=yes", "IIN_OPTICAL_MMAP=no"
    bin.install "hdl_dump"
  end
end

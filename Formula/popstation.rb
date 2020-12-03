class Popstation < Formula
  desc "Utility to convert PlayStation ISOs for use with PSP Popstation"
  homepage "https://github.com/ticky/popstation"
  url "https://github.com/ticky/popstation.git", revision: "51365d05c757ee346f8f1c4b9ea2691a2b8be608"
  version "2017-03-25T412543Z"
  revision 1

  head "https://github.com/ticky/popstation.git"

  depends_on "base_pbp"
  depends_on "iniparser"

  def install
    inreplace "common.h", "BASE.PBP", Formula["base_pbp"].opt_pkgshare/"BASE.PBP"
    system "make"
    bin.install "popstation", "popstation_md"
  end
end

class Ps2iconsys < Formula
  desc "PlayStation 2 icon.sys Tools"
  homepage "http://www.ghulbus-inc.de/projects/ps2iconsys/index.html"
  url "https://github.com/ticky/ps2iconsys.git", revision: "0d9348d6174c729c0a3a4d80954bec5cc4690e55"
  version "1.0"
  revision 1

  head "https://github.com/ticky/ps2iconsys.git"

  def install
    system "make"
    bin.install "obj_to_ps2icon", "ps2icon_to_obj", "iconsys_builder"
  end

  test do
    system bin/"ps2icon_to_obj", "-h"
  end
end

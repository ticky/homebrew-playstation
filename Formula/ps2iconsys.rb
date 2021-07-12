class Ps2iconsys < Formula
  desc "PlayStation 2 icon.sys Tools"
  homepage "https://www.ghulbus-inc.de/projects/ps2iconsys/index.html"
  url "https://github.com/ticky/ps2iconsys.git", revision: "0d9348d6174c729c0a3a4d80954bec5cc4690e55"
  version "1.0"
  revision 1

  head "https://github.com/ticky/ps2iconsys.git"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/ps2iconsys-1.0_1"
    rebuild 2
    sha256 cellar: :any_skip_relocation, catalina: "ca8f73994ce7c5b2783b3dac44ef948d533828bf2a809384f49c92804bc7eac3"
  end

  depends_on :macos

  def install
    system "make"
    bin.install "obj_to_ps2icon", "ps2icon_to_obj", "iconsys_builder"
  end

  test do
    system bin/"ps2icon_to_obj", "-h"
  end
end

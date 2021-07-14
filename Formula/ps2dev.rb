class Ps2dev < Formula
  desc "Compiler & other tools for creating homebrew software for the PlayStation®2"
  homepage "https://github.com/ps2dev/ps2dev"
  url "https://github.com/ps2dev/ps2dev.git"
  version "1.3.0"

  head "https://github.com/ps2dev/ps2dev.git"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on "bison"
  depends_on "flex"
  depends_on "gmp"
  depends_on "gnu-sed"
  depends_on "gsl"
  depends_on "libmpc"
  depends_on "mpfr"
  depends_on "texinfo"
  depends_on "wget"

  conflicts_with "ps2client",
                 because: "ps2client is installed by both Formulae"

  def install
    ENV["PS2DEV"] = prefix
    ENV["PS2SDK"] = prefix/"ps2sdk"
    mkdir ENV["PS2SDK"]
    ENV["GSKIT"] = prefix/"gsKit"
    mkdir ENV["GSKIT"]
    ENV["PATH"] =
      "#{ENV["PATH"]}:#{prefix}/bin:#{prefix}/ee/bin:#{prefix}/iop/bin:#{prefix}/dvp/bin:#{ENV["PS2SDK"]}/bin"

    system "./build-all.sh"
  end

  test do
    system "echo \"$(#{bin}/ps2client)\" | grep Usage"
  end
end

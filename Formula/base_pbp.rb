class NullDownloadStrategy < CurlDownloadStrategy
  def fetch
    if !File.exist? @tarball_path
      odie "You must manually download BASE.PBP and place it in: #{@tarball_path}"
    else
      super
    end
  end
end

class BasePbp < Formula
  desc "Base Popstation executable image"
  homepage "https://dontlook.here"
  url "BASE.PBP", using: NullDownloadStrategy
  version "1.0"
  sha256 "e0d49b137102eea2d50a9cfc8359e9cd835d10c3f657b59fc0f086b4671cec3d"

  def install
    pkgshare.install "BASE.PBP"
  end

  test do
    File.exist? "#{pkgshare}/BASE.PBP"
  end
end

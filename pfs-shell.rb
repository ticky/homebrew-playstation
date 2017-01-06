require "os/mac/mach"

class PfsShell < Formula
  desc "CLI tool for browsing PlayStation 2 file system disks and images"
  homepage "https://github.com/uyjulian/pfsshell"
  head "https://github.com/uyjulian/pfsshell.git"

  def install
    system "make"
    %W[libapa.dylib libfakeps2sdk.dylib libiomanX.dylib libpfs.dylib].each do |dylib|
      # Fix install names - the binary uses basenames without paths
      MachO::Tools.change_install_name("pfsshell", dylib, "#{lib}/#{dylib}")
      # File.realpath because these filenames are actually symlinks
      lib.install File.realpath(dylib)
    end
    bin.install "pfsshell"
  end
end

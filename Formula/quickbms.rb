class Quickbms < Formula
  desc "Generic file extractor and reimporter"
  homepage "http://aluigi.altervista.org/quickbms.htm"
  url "http://aluigi.altervista.org/papers/quickbms_src.zip"
  version "0.8.0"
  sha256 "b2dc34503f0371fbc796efa270ce38a0c8dd0d1a8960d6c23f793bdf2abdc596"

  depends_on "openssl"

  fails_with :clang
  fails_with :gcc_4_0
  fails_with :gcc_4_2

  # Bundles various OS X-specific fixes and improvements
  patch do
    url "https://github.com/mistydemeo/quickbms/compare/v0.8.0...5752a6a2a38e16211952553fcffa59570855ac42.patch"
    sha256 "be8d91d08358a76366101dc1cf7c2fcecab5e0cf70bddb227b3c2263dc54c131"
  end

  def install
    # quickbms is 32-bit only
    ENV.m32

    system "make", "USE_OPENSSL=1"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # Taken from the sample at http://aluigi.altervista.org/bms/quickbms_crc_engine.txt
    (testpath/"crc.bms").write <<-EOS.undent
      encryption CRC 0xEDB88320 "32 -1 -1 0 0 1"
      get SIZE asize
      log MEMORY_FILE 0 SIZE
      print "%QUICKBMS_CRC|x%"
      EOS

    (testpath/"test.txt").write "Test data\n"

    assert_includes `#{bin}/quickbms crc.bms test.txt 2>&1`, "0x5836df4d"
  end
end

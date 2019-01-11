class Quickbms < Formula
  desc "Generic file extractor and reimporter"
  homepage "http://aluigi.altervista.org/quickbms.htm"
  url "http://aluigi.altervista.org/papers/quickbms_src.zip"
  version "0.9.2"
  sha256 "95504b77736ee37e06b6c5ccc826bdce88f31a690bba16daa9185b4c2e520dfe"

  depends_on "openssl"

  fails_with :clang
  fails_with :gcc_4_2
  # Crashes in `brew test`; not sure why yet
  fails_with :gcc => "8"

  def install
    # The makefile calls brew, which fails when run from *inside* brew because
    # brew isn't in the path. It's brewception!
    inreplace "Makefile", "`brew --prefix openssl`", Formula["openssl"].opt_prefix

    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    # Taken from the sample at http://aluigi.altervista.org/bms/quickbms_crc_engine.txt
    (testpath/"crc.bms").write <<~EOS
      encryption CRC 0xEDB88320 "32 -1 -1 0 0 1"
      get SIZE asize
      log MEMORY_FILE 0 SIZE
      print "%QUICKBMS_CRC|x%"
      EOS

    (testpath/"test.txt").write "Test data\n"

    assert_includes `#{bin}/quickbms crc.bms test.txt 2>&1`, "0x5836df4d"
  end
end

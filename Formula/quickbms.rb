class Quickbms < Formula
  desc "Generic file extractor and reimporter"
  homepage "http://aluigi.altervista.org/quickbms.htm"
  url "http://aluigi.altervista.org/papers/quickbms_src.zip"
  version "0.8.4"
  sha256 "dd422db7448e5f3a4c593a3ba789e1c3b5b4978c05d3b6c648b52c030bded2cf"

  depends_on "openssl"

  fails_with :clang
  fails_with :gcc_4_2

  def install
    # quickbms is 32-bit only
    ENV.m32

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

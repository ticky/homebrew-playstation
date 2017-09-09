class Quickbms < Formula
  desc "Generic file extractor and reimporter"
  homepage "http://aluigi.altervista.org/quickbms.htm"
  url "http://aluigi.altervista.org/papers/quickbms_src.zip"
  version "0.8.1"
  sha256 "90d003347c31b7ef02422703e3a3f76d0283d475f162d756729b0c488e3fc4d5"

  fails_with :clang
  fails_with :gcc_4_0
  fails_with :gcc_4_2

  def install
    # quickbms is 32-bit only
    ENV.m32

    system "make"
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

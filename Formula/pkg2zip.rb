class Pkg2zip < Formula
  desc "Decrypts PlayStation Vita pkg file and packages to zip archive"
  homepage "https://github.com/lusid1/pkg2zip"
  url "https://github.com/lusid1/pkg2zip.git", tag: "2.3"
  license "Unlicense"
  head "https://github.com/lusid1/pkg2zip.git", branch: "master"

  bottle do
    root_url "https://github.com/ticky/homebrew-playstation/releases/download/pkg2zip-2.3"
    sha256 cellar: :any_skip_relocation, big_sur:      "69a0c4bad109d019d658ebd1b9ea2fbfed4c6b0eba8d1fbf28514836a128cc18"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ddcf22a56ec91b47faaaff06faa2938b6f5b356427d5d72921362c602dd64dd4"
  end

  patch :DATA if Hardware::CPU.arm?

  def install
    if Hardware::CPU.arm?
      rm "pkg2zip_aes_x86.c"
      rm "pkg2zip_crc32_x86.c"
    end

    system "make"

    bin.install "pkg2zip"
    bin.install "rif2zrif.py" => "rif2zrif"
    bin.install "zrif2rif.py" => "zrif2rif"
  end

  test do
    system bin/"pkg2zip", "--help"
  end
end

__END__
diff --git a/makefile b/makefile
index 41e84a8..bcf34d4 100644
--- a/makefile
+++ b/makefile
@@ -24,14 +24,6 @@ ${BIN}: ${OBJ}
 	@echo [L] $@
 	@${CC} ${LDFLAGS} -o $@ $^
 
-%aes_x86.o: %aes_x86.c
-	@echo [C] $<
-	@${CC} ${CFLAGS} -maes -mssse3 -MMD -c -o $@ $<
-
-%crc32_x86.o: %crc32_x86.c
-	@echo [C] $<
-	@${CC} ${CFLAGS} -mpclmul -msse4 -MMD -c -o $@ $<
-
 %.o: %.c
 	@echo [C] $<
 	@${CC} ${CFLAGS} -MMD -c -o $@ $<

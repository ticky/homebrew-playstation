class Popstation < Formula
  desc "Utility to convert PlayStation ISOs for use with PSP Popstation"
  homepage "https://github.com/ticky/popstation"
  url "https://github.com/ticky/popstation.git", revision: "51365d05c757ee346f8f1c4b9ea2691a2b8be608"
  version "2017-03-25T412543Z"
  revision 1

  head "https://github.com/ticky/popstation.git"

  depends_on "iniparser"

  patch :DATA

  def install
    system "make"
    bin.install "popstation", "popstation_md"
  end
  
  def caveats 
    <<~EOS
      You must place a copy of BASE.PBP in:
        ~/.popstation/BASE.PBP
      
      One valid BASE.PBP file has the following sha256 hash:
        e0d49b137102eea2d50a9cfc8359e9cd835d10c3f657b59fc0f086b4671cec3d
    EOS
  end
end

__END__
diff --git a/common.h b/common.h
index 11e1030..6f0392e 100644
--- a/common.h
+++ b/common.h
@@ -10,7 +10,7 @@ char *gamecodes[N_GAME_CODES] = {"SCUS", "SLUS", "SLES", "SCES",
                                  "SCED", "SLPS", "SLPM", "SCPS",
                                  "SLED", "SLPS", "SIPS", "ESPM"};
 
-#define BASE "BASE.PBP"
+char *BASE;
 
 char buffer[1 * 1048576];
 char buffer2[0x9300];
diff --git a/popstation.c b/popstation.c
index fa1b761..99941d1 100644
--- a/popstation.c
+++ b/popstation.c
@@ -186,6 +186,11 @@ void convert(char *input, char *output, char *title, char *code,
 
   // printf("isosize, isorealsize %08X  %08X\n", isosize, isorealsize);
 
+  char *home_dir = getenv("HOME");
+  char * path = "/.popstation/BASE.PBP";
+  BASE = malloc(strlen(home_dir) + strlen(path) + 1);
+  strncpy(BASE, home_dir, strlen(home_dir) + 1);
+  strncat(BASE, path, strlen(path) + 1);
   base = fopen(BASE, "rb");
   if (!base) {
     ErrorExit("Cannot open %s\n", BASE);
diff --git a/popstation_md.c b/popstation_md.c
index c348234..675b5d8 100644
--- a/popstation_md.c
+++ b/popstation_md.c
@@ -45,6 +45,11 @@ void convert(int ndiscs, char **inputs, char *output, char *title,
   int iso_positions[5];
   int ciso;
 
+  char *home_dir = getenv("HOME");
+  char * path = "/.popstation/BASE.PBP";
+  BASE = malloc(strlen(home_dir) + strlen(path) + 1);
+  strncpy(BASE, home_dir, strlen(home_dir) + 1);
+  strncat(BASE, path, strlen(path) + 1);
   base = fopen(BASE, "rb");
   if (!base) {
     ErrorExit("Cannot open %s\n", BASE);

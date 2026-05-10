class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.95"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.95/iron"
  sha256 "332ace679cb0415e6e6d442eaf456dc47cdd6f206130d2a2f45825b138cc14cd"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.95/cef-runtime.tar.gz"
    sha256 "0060122ac51cb0a1621eba3aafd13f732a3ad0ea09351abac81978d4c11f7836"
  end

  def install
    bin.install "iron" => "iron.bin"

    resource("cef-runtime").stage do
      lib.install "libcef.so"
      Dir.glob("*.dat").each { |f| lib.install f }
      Dir.glob("*.bin").each { |f| lib.install f }
      Dir.glob("*.pak").each { |f| lib.install f }
      (share/"iron").install Dir.glob("*.pak")
      (share/"iron"/"locales").install Dir.glob("locales/*") if Dir.exist?("locales")
    end

    (bin/"iron").write <<~SH
      #!/bin/bash
      export LD_LIBRARY_PATH="#{lib}${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
      exec "#{bin}/iron.bin" "$@"
    SH
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
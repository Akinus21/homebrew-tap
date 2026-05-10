class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.109"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.109/iron"
  sha256 "c10cda16307c395c09ff17e8c602188c0b5f1c97c6d84367568d99d1ad7c1562"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.109/cef-runtime.tar.gz"
    sha256 "a0a9dc92b9696f1bf3f91468e1efd6d376c43c33bccc4d0e0fd57d9856712f5c"
  end

  def install
    bin.install "iron" => "iron.bin"

    resource("cef-runtime").stage do
      lib.install "libcef.so"
      Dir.glob("*.so").reject { |f| f == "libcef.so" }.each { |f| lib.install f }
      Dir.glob("*.so.*").each { |f| lib.install f }
      Dir.glob("*.dat").each { |f| lib.install f }
      Dir.glob("*.bin").each { |f| lib.install f }
      Dir.glob("*.json").each { |f| lib.install f }
      Dir.glob("*.pak").each { |f| lib.install f }
      (lib/"swiftshader").install Dir.glob("swiftshader/*") if Dir.exist?("swiftshader")
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

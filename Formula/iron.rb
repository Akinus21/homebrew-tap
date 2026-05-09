class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.86"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.86/iron"
  sha256 "64a048acd925cb4a884c53bc22cac8aa42cc0f270c99b36691606df09b2d6942"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.86/cef-runtime.tar.gz"
    sha256 "b966881b3f02f307339968ba9d9be59e5b81c45258272692661503d1bf69d1ca"
  end

  def install
    bin.install "iron" => "iron.bin"

    resource("cef-runtime").stage do
      lib.install "libcef.so"
      (share/"iron").install Dir["*.pak"], "icudtl.dat"
      (share/"iron"/"locales").install Dir["locales/*"] if Dir.exist?("locales")
      (share/"iron").install "v8_context_snapshot.bin" if File.exist?("v8_context_snapshot.bin")
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
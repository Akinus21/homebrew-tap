class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.87"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.87/iron"
  sha256 "8f742f7b67813366f40f8f580840f9075b0ac0cb9d8c8469455c49798756ecf1"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.87/cef-runtime.tar.gz"
    sha256 "62e487ed574ae6279dd85d0552dcbfc341eab74bbb41698cb2b3c6b34b861727"
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
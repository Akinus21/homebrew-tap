class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.88"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.88/iron"
  sha256 "a4561b4153463bdacb7af2387583af021db6058017fcd85ac90d834f0ebd9c5b"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.88/cef-runtime.tar.gz"
    sha256 "ddad3652c4b264fe3bd95ae337575c967769723ee6554d63ec66a1f868df85f1"
  end

  def install
    bin.install "iron" => "iron.bin"

    resource("cef-runtime").stage do
      lib.install "libcef.so"
      lib.install "icudtl.dat"
      lib.install "v8_context_snapshot.bin" if File.exist?("v8_context_snapshot.bin")
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
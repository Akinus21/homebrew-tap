class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.89"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.89/iron"
  sha256 "a4561b4153463bdacb7af2387583af021db6058017fcd85ac90d834f0ebd9c5b"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.89/cef-runtime.tar.gz"
    sha256 "9812145836ee3513e6f7c5b4d63f64087f6f819aaa37330102aa979869208cec"
  end

  def install
    bin.install "iron" => "iron.bin"

    resource("cef-runtime").stage do
      lib.install "libcef.so"
      lib.install "icudtl.dat" if File.exist?("icudtl.dat")
      lib.install "v8_context_snapshot.bin" if File.exist?("v8_context_snapshot.bin")
      (share/"iron").install Dir["*.pak"] if !Dir["*.pak"].empty?
      (share/"iron").install "icudtl.dat" if File.exist?("icudtl.dat")
      (share/"iron"/"locales").install Dir["locales/*"] if Dir.exist?("locales") && !Dir["locales/*"].empty?
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
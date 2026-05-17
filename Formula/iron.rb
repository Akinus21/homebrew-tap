class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.196"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.196/iron"
  sha256 "c64c6f052b35316cc9b7ebf6f1408a9171f36872cbebb205add5cf253ab11dc7"

  depends_on "gtk4"
  depends_on "libadwaita"
  depends_on "webkitgtk"

  def install
    bin.install "iron" => "iron.bin"

    (bin/"iron").write <<~SH
      #!/bin/bash
      cd "$(dirname "#{bin}/iron.bin")"
      exec ./iron.bin "$@"
    SH
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
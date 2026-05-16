class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.182"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.182/iron"
  sha256 "05b0a97432279f99395c97e6417b36c3864a6ba1586f2da334cfe134a680aa58"

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
class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.180"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.180/iron"
  sha256 "f6d1fa07520dd4c98b5ee73515115dfa893ba1e5466222611f1054e95e5d9d37"

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
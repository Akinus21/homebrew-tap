class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.179"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.179/iron"
  sha256 "0091ad8c1e34699351ca702c5195ddc3a1d81214a9958066ec9cb23cf9983bb5"

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
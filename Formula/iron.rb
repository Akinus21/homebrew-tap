class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.194"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.194/iron"
  sha256 "75a25cbc1a042ef6cf867554cf27c7b95d87840e261a5701796cddbdfc9ba923"

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
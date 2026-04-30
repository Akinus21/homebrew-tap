class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.4"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.4/iron"
  sha256 "92f8c7ca6fdfdde136f73e3e5d8bd4d536cd6242eb9edff726f7100b90a9eabe"
  depends_on "gtk4"
  depends_on "libadwaita"
  depends_on "webkitgtk"

  def install
    bin.install "iron"
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end

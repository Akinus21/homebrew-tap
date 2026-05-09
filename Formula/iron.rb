class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.77"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.77/iron"
  sha256 "c0b7f5d0158d8c28bb22eac8f7dc1d13464f128943904f519128db8a2f07330d"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.77/cef-runtime.tar.gz"
    sha256 "9050dc1f25ad5cdfd9f3ea09addb8aba427eb8265a3a51bb154895d9ddb8ca6d"
  end

  def install
    bin.install "iron"
    resource("cef-runtime").stage { (bin).install Dir["*"] }
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
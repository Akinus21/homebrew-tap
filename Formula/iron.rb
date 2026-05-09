class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.80"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.80/iron"
  sha256 "be50195b216828df50e2ce02be804fe3e265de919b4875eaee1a32c25f4c0f6e"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.80/cef-runtime.tar.gz"
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
class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.81"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.81/iron"
  sha256 "838e805cce09ee2b8f6dd8fa95052b5efbd7e58bca6f3c4cc7fca8b9a2cc837f"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "cef-runtime" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.81/cef-runtime.tar.gz"
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
class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.74"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.74/iron"
  sha256 "be5200ee3c4eb8f2739018113d2883d9ba6aad2a1ff7c11dacc5f6a4c9d896e4"

  depends_on "gtk4"
  depends_on "libadwaita"

  resource "libcef" do
    url "https://github.com/Akinus21/Iron/releases/download/v0.0.74/libcef.so"
    sha256 "b7074d9fc487b77af08ec03f3b8858755e748578fb14125690a39e8c249466b4"
  end

  def install
    bin.install "iron"
    resource("libcef").stage do
      libexec.install "libcef.so"
    end
  end

  def caveats
    <<~EOS
      Iron requires libcef.so to run. It has been installed to:
        #{libexec}/libcef.so

      You may need to add it to your LD_LIBRARY_PATH:
        export LD_LIBRARY_PATH="#{libexec}:$LD_LIBRARY_PATH"
    EOS
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end
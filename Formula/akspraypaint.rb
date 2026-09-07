class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.80/akspraypaint"
  sha256 "2d71c44aee29887d21ab2e5e64f5f6355f0887ccf55b8eb3ea2a7fab4f8fb09e"
  version "0.0.80"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.80/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

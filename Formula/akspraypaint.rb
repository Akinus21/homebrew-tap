class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.76/akspraypaint"
  sha256 "87b16541ca58eb1c4d54dc4d300bc16f1fbdafb4ebb4136adcd96b2153386fc9"
  version "0.0.76"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.76/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

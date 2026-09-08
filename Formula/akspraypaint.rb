class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.125/akspraypaint"
  sha256 "44a9544e3d9dff14542230d2c1b76857ac0ad08464e5cd32419f6aa7dc33a497"
  version "0.0.125"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.125/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

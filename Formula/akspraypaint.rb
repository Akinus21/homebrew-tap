class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.85/akspraypaint"
  sha256 "1ea6ad5f21b591c729ef773447ccb872b6a58ece1e56d9339fff57d342576851"
  version "0.0.85"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.85/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

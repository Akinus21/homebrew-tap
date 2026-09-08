class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.124/akspraypaint"
  sha256 "e120ad7d0bf2a927b00b3ac9e8de7bfceede4a49bdc9dff6b209e8a47c232106"
  version "0.0.124"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.124/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

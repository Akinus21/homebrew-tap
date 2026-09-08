class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.113/akspraypaint"
  sha256 "93b4b8d2b5fe0e869d3f836cb624990d897dc01eacb3a320416d0acda2cbd7f5"
  version "0.0.113"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.113/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

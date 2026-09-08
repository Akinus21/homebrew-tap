class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.128/akspraypaint"
  sha256 "f13f9ea6938b82a4dd0f2da90bcf33eff0d29b2480e6df0f9a936270db8bdb9d"
  version "0.0.128"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.128/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

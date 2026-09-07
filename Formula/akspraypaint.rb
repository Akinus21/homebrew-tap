class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.91/akspraypaint"
  sha256 "35f1a038b1a26ebf9fa0ec61f8fc29ce7caf6d8e314330e51f9d144d54e40199"
  version "0.0.91"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.91/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

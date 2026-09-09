class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.135/akspraypaint"
  sha256 "a9bfd5f1a57f08ff03b3a61938f8d7a9330402d9810ab9c75ea7e1c4feeeefec"
  version "0.0.135"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.135/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

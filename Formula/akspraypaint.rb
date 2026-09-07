class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.99/akspraypaint"
  sha256 "28c14358d390ed50658f8af4be869fb16d12bc4c4120bb004d6d619f17108b5e"
  version "0.0.99"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.99/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

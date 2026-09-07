class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.88/akspraypaint"
  sha256 "d29c2cc5adcb303231e343fcdd3329df31e4d204bdd7e84c25819d854c29b21d"
  version "0.0.88"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.88/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.107/akspraypaint"
  sha256 "ea62b19b2e36312637a64743d90925e9eb164b065bdfaa61cd11083443f2198a"
  version "0.0.107"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.107/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

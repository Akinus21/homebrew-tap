class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.86/akspraypaint"
  sha256 "077e6dee8c87595d263c44a92fc57ceefe24cf79ff3a1aa592b13d3a0a754fb4"
  version "0.0.86"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.86/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.93/akspraypaint"
  sha256 "f3582a0c633d25102053ac7380a6ee375ed3d423bba55104573464cda1036202"
  version "0.0.93"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.93/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.115/akspraypaint"
  sha256 "0813733a9015b1c73a70fee6c6fe73a57c80a92304863d290f4d0189b5ff916d"
  version "0.0.115"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.115/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.117/akspraypaint"
  sha256 "b771f1d1a4d847e8faf06938d43f5d158b7d5e9a7bfcf243598491398d220637"
  version "0.0.117"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.117/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

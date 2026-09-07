class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.109/akspraypaint"
  sha256 "b207888c6082ba1c662b33834859272591a8ad55e368d839e64c531d5fc604cf"
  version "0.0.109"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.109/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

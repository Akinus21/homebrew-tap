class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.100/akspraypaint"
  sha256 "76ad64086ed30889817e5896f5c4636176c66b9daa040f3892b462031eace840"
  version "0.0.100"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.100/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

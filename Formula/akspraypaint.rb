class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.121/akspraypaint"
  sha256 "00c475cf69454c2ec08a519d10705ed9fe48f142015f3f791a43b8ed8334e3f7"
  version "0.0.121"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.121/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

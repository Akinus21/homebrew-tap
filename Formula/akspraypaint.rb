class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.112/akspraypaint"
  sha256 "bf210b4d8f73855a1691a69697ee199dba3958a0120bf4029fe9624415b1b5fa"
  version "0.0.112"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.112/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

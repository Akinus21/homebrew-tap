class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.126/akspraypaint"
  sha256 "268e5b27ddd103b1ca5a453f7fd1597b66b68c244d9314fc0446ee756002747c"
  version "0.0.126"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.126/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

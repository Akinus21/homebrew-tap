class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.105/akspraypaint"
  sha256 "595a47ca8269918756120b260d892d04ccdd7fd402dc93f856045d9acaebfa2b"
  version "0.0.105"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.105/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.84/akspraypaint"
  sha256 "592283e9875e23adda11233186b201d567adca7be6c174b591485e3146b802a3"
  version "0.0.84"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.84/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

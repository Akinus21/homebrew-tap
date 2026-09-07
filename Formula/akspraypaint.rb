class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.106/akspraypaint"
  sha256 "4488de9c153f61f35160f427e8f7dc872065c37c6f82b85987e3a16da2c47223"
  version "0.0.106"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.106/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

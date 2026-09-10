class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.137/akspraypaint"
  sha256 "f5f7b159a20d0cb9150173763acc28a602fe350a30e28f41e60bf643c931f396"
  version "0.0.137"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.137/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

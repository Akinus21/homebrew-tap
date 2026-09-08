class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.123/akspraypaint"
  sha256 "ac43a63bfd103264e3159f59380768513924ecad5800a53ee82cc6e29efb3111"
  version "0.0.123"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.123/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

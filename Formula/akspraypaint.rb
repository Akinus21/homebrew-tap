class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.92/akspraypaint"
  sha256 "c3cd20bda93b726052b666616e9377e452b98e1e408ff33b5717345694fa8f30"
  version "0.0.92"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.92/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

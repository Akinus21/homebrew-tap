class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.83/akspraypaint"
  sha256 "e980fbfdf51cd10cbd58116f069f9bee7cf876625af0be8cd6249f058efcd989"
  version "0.0.83"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.83/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

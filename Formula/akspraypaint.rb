class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.82/akspraypaint"
  sha256 "d43d218a0a89b511acf486a0ec34780f9facfe65ab9ecd8dbefeb38f4f503ffb"
  version "0.0.82"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.82/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

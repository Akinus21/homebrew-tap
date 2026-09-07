class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.81/akspraypaint"
  sha256 "88e7233cc5f7ca8e6d49e38818ace91d1e285e654b90ba2eccd4fc9f34900600"
  version "0.0.81"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.81/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

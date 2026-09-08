class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.110/akspraypaint"
  sha256 "55d1bd0f0cd318193a1102987a93e500f108297287990f1e7730232cd6b2db6c"
  version "0.0.110"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.110/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

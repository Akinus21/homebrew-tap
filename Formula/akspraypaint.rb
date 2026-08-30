class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.75/akspraypaint"
  sha256 "a411c58c94a026036e0bd4bfa208ab45e7824e09cda648293816c32a4bff4e1c"
  version "0.0.75"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.75/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end

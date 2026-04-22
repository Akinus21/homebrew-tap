class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.11"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.11/aktools"
  sha256 "fcaf0a2ae7d0e293986f3150d11378d5d87d01ec7eee0798f013c3ddce59f0ce"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

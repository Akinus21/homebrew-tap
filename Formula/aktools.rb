class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.42"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.42/aktools"
  sha256 "63e6dbfbe2d64b0c7eebca3d81c76f1e409aa67a4cbae4c04e9d4c5855a8c782"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

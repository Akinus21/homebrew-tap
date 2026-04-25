class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.59"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.59/aktools"
  sha256 "68945b0e91c7efcf047c24c89e6e26662f5223b6e4afd3b20d197b4f4be96498"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

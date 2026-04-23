class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.14"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.14/aktools"
  sha256 "465aa592fd8cfafd6c5a2502b81584e9b01133c8022ddf19e60f2eb637408d3a"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

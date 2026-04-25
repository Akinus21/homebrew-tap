class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.55"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.55/aktools"
  sha256 "d8d5c67665e7a6c3eb1bca28d3c7f44ef45d8e416259e16dd8bf99e7f40eb101"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

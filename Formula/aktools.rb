class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.20"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.20/aktools"
  sha256 "ad1c22c1015afa7b8840345cad355c191b550a47f0176091ec1bcf7372e3cfa8"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

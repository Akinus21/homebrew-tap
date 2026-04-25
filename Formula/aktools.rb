class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.48"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.48/aktools"
  sha256 "49c687e81d267d40337b2d936e4e43cb33dc056c09713b252f29f789013d908e"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

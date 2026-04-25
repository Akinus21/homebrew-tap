class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.58"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.58/aktools"
  sha256 "6e8cf80267e540dc353225b90937e415f05cc42e675b9bf043a52f806588f7ab"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

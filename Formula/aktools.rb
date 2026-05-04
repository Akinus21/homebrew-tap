class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.66"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.66/aktools"
  sha256 "97453d1b5cce8efbbe96e4453d439d162635eef0a803f6f65222a565738a1cb5"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

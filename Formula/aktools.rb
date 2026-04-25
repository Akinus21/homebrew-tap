class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.57"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.57/aktools"
  sha256 "151a33bc3ff71365613952bd26a1a0d89f77b1556aabd8eda721cdf402eac819"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

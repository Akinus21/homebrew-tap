class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.43"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.43/aktools"
  sha256 "8d5f10c6e49a425728b747efcf0db87892f42d4414755c139df6d4ffd6b0b012"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

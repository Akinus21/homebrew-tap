class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.53"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.53/aktools"
  sha256 "0adadffa4114677cdd035dbea18f932cd9ecc98cf890605127d89973d87d8dca"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

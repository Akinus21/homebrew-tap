class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.40"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.40/aktools"
  sha256 "4ca5572dca40dbb7c09570ab6efe3ab78be63dbebf6aff9316af3c8e82666899"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

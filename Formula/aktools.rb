class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.6"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.6/aktools"
  sha256 "d27712de20935b810e39323e862d79d3629225d587a32c643d3a8258fde62928"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

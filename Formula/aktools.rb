class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.39"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.39/aktools"
  sha256 "8eff67bd4313b551d4a1c78736589bdc18d7a2f1e6ad8c6db7b8d8afa8adf5cb"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

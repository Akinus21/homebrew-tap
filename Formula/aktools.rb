class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.46"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.46/aktools"
  sha256 "000870cb070e83053c5d699d2e78e2b06a73c5eeca989625a3e13c15ed0881a5"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

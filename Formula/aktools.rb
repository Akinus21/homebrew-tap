class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.67"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.67/aktools"
  sha256 "7698ae9590f99b1535b1d5c89a6cd9f7493b778299a049dc0e4c6c26566ad139"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

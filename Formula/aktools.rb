class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.60"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.60/aktools"
  sha256 "4dfc39985c70b8a9dd591371b18dcf379d9b2c52cbe7534fcb0cd2b20431d585"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

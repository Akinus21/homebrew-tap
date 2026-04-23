class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.21"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.21/aktools"
  sha256 "d8d025ec02f339be08b6502aef47eb49e4a088a1f4fdfed4d7af7dcde381d1e1"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end

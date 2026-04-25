class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "1.0.0"
  url "https://github.com/Akinus21/aktools/releases/download/v1.0.0/aktools"
  sha256 "a94a96bc04657141d72425a4ef95bb54d4ac97d650c3d761489a9b6dd0107175"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
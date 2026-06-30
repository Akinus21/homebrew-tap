class Anvil < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/Anvil"
  version "0.0.69"
  url "https://github.com/Akinus21/Anvil/releases/download/v0.0.69/Anvil"
  sha256 "5d69af64ec93faaebe61e0e022391e3e9431e28eba670dfd4b260768cd444b90"
  def install
    bin.install "Anvil"
  end
  test do
    system bin/"Anvil", "--version"
  end
end

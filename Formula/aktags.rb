class Aktags < Formula
  desc "CLI tool for managing tags across multiple files"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.1.0"
  url "https://github.com/Akinus21/Aktags/releases/download/v0.1.0-20260423003731-c5aecdc0/aktags"
  sha256 "5703c9c33bd0d8d4f46baf4ee39ae5c1146101b0fd5d979f60427abaebda71ca"

  def install
    bin.install "aktags"
  end

  test do
    system bin/"aktags", "--version"
  end
end
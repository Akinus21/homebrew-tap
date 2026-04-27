class BlueakSessionManager < Formula
  desc "Session manager for blueak"
  homepage "https://github.com/Akinus21/blueak-session-manager"
  version "0.0.2"
  url "https://github.com/Akinus21/blueak-session-manager/releases/download/v0.0.2/blueak-session-manager"
  sha256 "a0dea5ffe9b3fd0187f9d2ea1ec5bfb5205af67421403c74a5bfb06b15a9baeb"

  def install
    bin.install "blueak-session-manager"
  end

  test do
    system bin/"blueak-session-manager", "--version"
  end
end
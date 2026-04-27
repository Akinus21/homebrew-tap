class BlueakSessionManager < Formula
  desc "Saves and restores niri compositor session state"
  homepage "https://github.com/Akinus21/blueak-session-manager"
  version "0.0.5"
  url "https://github.com/Akinus21/blueak-session-manager/releases/download/v0.0.5/blueak-session-manager"
  sha256 "6d5a3a5ac5ee6e5a9c102b5cf6c5e370993f89aa968288b2613a16bdd3a4f38d"
  def install
    bin.install "blueak-session-manager"
  end
  test do
    system bin/"blueak-session-manager", "--version"
  end
end

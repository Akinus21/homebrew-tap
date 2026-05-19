class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.31"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.31/akai-agent"
    sha256 "2c17343ff55572d4685ad0a5e9c71f2877da99eb82e95a7a90e74dffee424eca"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.31/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "43e75dbfc03d7cb61b4dc5c8bf36bb6192b2ee2162efb05e306e55c50f2c332a"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
    if OS.linux? && Hardware::CPU.intel?
      resource("rpc-cuda").stage do
        (share/"akai-agent").mkpath
        cp "rpc-server", "#{share}/akai-agent/rpc-server" if File.exist?("rpc-server")
        cp "llama-rpc-server", "#{share}/akai-agent/llama-rpc-server" if File.exist?("llama-rpc-server")
        (share/"akai-agent/lib").mkpath
        cp_r "lib/.", "#{share}/akai-agent/lib/" if File.exist?("lib")
      end
    end
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end

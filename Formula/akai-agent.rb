class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.34"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.34/akai-agent"
    sha256 "5dd6ece65a626c06a29be2783c0db66db5a8bf6a904d13e4ba0998703cadeb69"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.34/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "ce7dc3767409a8919c90bb07359b393a16633a6ddfa36ab968aace3e62a433c0"
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

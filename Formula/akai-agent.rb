class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.33"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.33/akai-agent"
    sha256 "5892bd34e0bc2af789ac4c4d48d4c8d3dce373f800ff4deb2b5cc663f66db039"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.33/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "03b8a3b30ed9e1d2ed6bf5908e214ad30451b6bf34047a50663a7f40d1ea8f05"
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

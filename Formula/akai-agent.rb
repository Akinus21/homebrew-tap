class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.32"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.32/akai-agent"
    sha256 "b7df753bee50d56d0598b348d06291aabad83abcea101b72bd32b26b6872ed1e"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.32/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "039f6662ba803d49a9b54890fe982a55fe9e94f2545f2ae6c13675e400918d73"
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

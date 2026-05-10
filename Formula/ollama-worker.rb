class OllamaWorker < Formula
  desc "Distributed Ollama worker node for ollama-queue"
  homepage "https://github.com/Akinus21/ollama-queue-agent"
  version "0.0.6"
  license "MIT"

  on_linux do
    url "https://github.com/Akinus21/ollama-queue-agent/releases/download/v0.0.6/ollama-worker"
    sha256 "54a496666a2061781e14c143455698420eee6ef9a364fb3bb986ecc933fa302c"
  end

  def install
    bin.install "ollama-worker"
  end

  test do
    assert_match "ollama-worker", shell_output("#{bin}/ollama-worker --help")
  end
end

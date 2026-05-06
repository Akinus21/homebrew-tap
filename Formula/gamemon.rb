class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.4/GameMon-service"
  sha256 "9fb0b2aecd2fe866e457c7acd760dd11ac235fc888ee7d02574ccc3548059bc5"
  license "MIT"

  def install
    bin.install "GameMon-service"
  end

  def post_install
    system "#{bin}/GameMon-service", "--install-resources"
  end
end

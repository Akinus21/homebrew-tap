class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.5/GameMon.tar.gz"
  sha256 "c3974eb945c216f4c16e8f845a77d7467fcfafc170236322b28f1415b71c86f4"
  license "MIT"

  def install
    prefix.install Dir["GameMon/*"]
    bin.install_symlink "#{prefix}/GameMon/GameMon-service" => "gamemon-service"
    bin.install_symlink "#{prefix}/GameMon/GameMon-gui" => "gamemon-gui"
    bin.install_symlink "#{prefix}/GameMon/GameMon-update" => "gamemon-update"
  end

  def post_install
    system "#{prefix}/GameMon/GameMon-service", "--install-resources"
  end
end

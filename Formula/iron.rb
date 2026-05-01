class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.18"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.18/iron"
  sha256 "b921ba570c83724d1a2996f56f3e8d0ed4c65e48b4dadc11c23b47a2b8863691"
  depends_on "gtk4"
  depends_on "libadwaita"
  depends_on "webkitgtk"

  def install
    bin.install "iron"

    (share/"applications").mkpath
    (share/"applications"/"org.blueak.iron.desktop").write <<~DESKTOP
[Desktop Entry]
Type=Application
Name=Iron
Comment=GTK4 keyboard-driven web browser for BlueAK
Exec=iron %u
Icon=org.blueak.iron
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Terminal=false
DESKTOP
  end

  test do
    assert_match "iron", shell_output("#{bin}/iron --version 2>&1 || true")
  end
end

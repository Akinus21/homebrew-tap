class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.28"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.28/iron"
  sha256 "8041ec9a0dcf74edf0bbb92290cd6977c2a9fd774f9ddbfaec8b6fe95ac92d5c"
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

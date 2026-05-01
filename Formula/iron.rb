class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.30"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.30/iron"
  sha256 "06807ec4ca2175e2e185f5aa117f485dba402cfd692701e52e5c400b4b002675"
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

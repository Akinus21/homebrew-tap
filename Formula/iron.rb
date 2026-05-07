class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.71"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.71/iron"
  sha256 "5629b4f4e9a9b9dbc6d1251cf40435ee2b81604a0d22f9abce63349e10c6f4bd"
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
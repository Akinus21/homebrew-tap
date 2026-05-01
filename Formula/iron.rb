class Iron < Formula
  desc "GTK4 keyboard-driven web browser for BlueAK"
  homepage "https://github.com/Akinus21/Iron"
  version "0.0.17"
  url "https://github.com/Akinus21/Iron/releases/download/v0.0.17/iron"
  sha256 "cb1c82858901e8a57776150dcd105a6b958e7967ba7228a247734c1bb1772ed5"
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
Exec=#{opt_bin}/iron %u
Icon=org.blueak.iron
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Terminal=false
    DESKTOP

    # Save a copy in pkgshare for post_install to use
    (pkgshare/"org.blueak.iron.desktop").write <<~DESKTOP
[Desktop Entry]
Type=Application
Name=Iron
Comment=GTK4 keyboard-driven web browser for BlueAK
Exec=#{opt_bin}/iron %u
Icon=org.blueak.iron
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;x-scheme-handler/http;x-scheme-handler/https;
StartupNotify=true
Terminal=false
    DESKTOP
  end

  def post_install
    user_home = ENV.fetch("HOME") { Dir.home }
    user_apps = Pathname.new("#{user_home}/.local/share/applications")
    desktop_file = user_apps/"org.blueak.iron.desktop"

    user_apps.mkpath
    FileUtils.cp pkgshare/"org.blueak.iron.desktop", desktop_file
  rescue => e
    opoo "Could not create user .desktop entry: #{e.message}"
    opoo "You can manually copy #{pkgshare}/org.blueak.iron.desktop to ~/.local/share/applications/"
  end

  def caveats
    <<~EOS
      A system-wide .desktop entry has been installed to:
        #{share}/applications/org.blueak.iron.desktop

      If Iron does not appear in your application menu, run:
        mkdir -p ~/.local/share/applications
        cp #{pkgshare}/org.blueak.iron.desktop ~/.local/share/applications/
        update-desktop-database ~/.local/share/applications
    EOS
  end

  test do
    system bin/"iron", "--version"
  end
end
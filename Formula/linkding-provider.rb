class LinkdingProvider < Formula
  desc "Noctalia launcher provider for searching and managing Linkding bookmarks"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.0"

  url "https://github.com/Akinus21/homebrew-tap/archive/refs/tags/linkding-provider-1.0.0.tar.gz"
  sha256 "PLACEHOLDER"

  def plugin_id
    "linkding-provider"
  end

  def plugin_dir
    Pathname.new(ENV["HOME"]) / ".config/noctalia/plugins" / plugin_id
  end

  def install
    (prefix / plugin_id).install Dir["plugins/#{plugin_id}/*"]
  end

  def post_install
    ohai "plugin_id: #{plugin_id}"
    ohai "plugin_dir: #{plugin_dir}"
    ohai "prefix: #{prefix}"
    ohai "source: #{prefix / plugin_id}"
    ohai "source exists: #{(prefix / plugin_id).exist?}"
    ohai "source children: #{(prefix / plugin_id).children.map(&:basename).join(", ") rescue "ERROR"}"

    plugin_dir.mkpath
    ohai "plugin_dir created: #{plugin_dir.exist?}"

    (prefix / plugin_id).each_child do |f|
      ohai "copying: #{f.basename}"
      cp_r f, plugin_dir
    end

    ohai "Linkding Provider installed to #{plugin_dir}"
  end

  def caveats
    <<~EOS
      The Linkding Provider plugin has been installed to:
        #{plugin_dir}

      Noctalia should pick it up automatically. If not, restart Noctalia Shell.

      To configure the plugin, open:
        Noctalia Settings → Plugins → Linkding Bookmarks → Configure

      Usage in the launcher:
        >lnk           Browse all bookmarks
        >lnk <query>   Search bookmark titles and URLs
        >lnk #<tag>    Search by tag
        >lnk new       Add a new bookmark
        >bmk           Same as >lnk (alternate prefix)
    EOS
  end

  def uninstall
    rm_rf plugin_dir if plugin_dir.exist?
    ohai "Linkding Provider removed from #{plugin_dir}"
  end

  test do
    %w[manifest.json LauncherProvider.qml Panel.qml Settings.qml].each do |f|
      assert_predicate prefix / plugin_id / f, :exist?,
        "Expected plugin file #{f} to exist in Cellar"
    end

    manifest = JSON.parse((prefix / plugin_id / "manifest.json").read)
    assert_equal "linkding-provider", manifest["id"]
  end
end

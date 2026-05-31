cask "codomain" do
  version "0.1.0"
  sha256 "ac808ec221fe9d6d87f32c7c8d8119bd46846f1edd39e513ac6f0d178cd5b41f"

  url "https://github.com/MarkKon/codomain/releases/download/v#{version}/Codomain_#{version}_universal.dmg",
      verified: "github.com/MarkKon/codomain/"
  name "Codomain"
  desc "Root-bound Neovim and Markdown preview workspace"
  homepage "https://github.com/MarkKon/codomain"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Codomain.app"

  zap trash: [
    "~/Library/Application Support/dev.codomain.desktop",
    "~/Library/Caches/dev.codomain.desktop",
    "~/Library/Preferences/dev.codomain.desktop.plist",
    "~/Library/WebKit/dev.codomain.desktop",
  ]
end

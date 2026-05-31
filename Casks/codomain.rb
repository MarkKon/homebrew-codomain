cask "codomain" do
  version "0.1.1"
  sha256 "e55801d9ebbddcaff764376522041425c5d1e3d4eb9168104bdceee83bddc8ec"

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
  binary "#{appdir}/Codomain.app/Contents/Resources/codomain"

  zap trash: [
    "~/Library/Application Support/dev.codomain.desktop",
    "~/Library/Caches/dev.codomain.desktop",
    "~/Library/Preferences/dev.codomain.desktop.plist",
    "~/Library/WebKit/dev.codomain.desktop",
  ]
end

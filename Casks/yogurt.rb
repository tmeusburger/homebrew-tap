cask "yogurt" do
  version "0.3.12"
  sha256 "c8db026cb0980881098b43040d1aa84f6845e859a7dcc91b9d43bdbabffa4997"

  url "https://github.com/FrigadeHQ/yogurt/releases/download/v#{version}/Yogurt-mac-arm64.dmg"
  name "Yogurt"
  desc "Private, on-device AI meeting notes"
  homepage "https://yogurt.so/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Yogurt.app"

  zap trash: [
    "~/Library/Application Support/Yogurt",
    "~/Library/Caches/so.yogurt.app",
    "~/Library/Caches/so.yogurt.app.ShipIt",
    "~/Library/Logs/Yogurt",
    "~/Library/Preferences/so.yogurt.app.plist",
    "~/Library/Saved Application State/so.yogurt.app.savedState",
  ]
end

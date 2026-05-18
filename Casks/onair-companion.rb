cask "onair-companion" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/alampros/onair-companion/releases/download/v#{version}/OnAirCompanion-v#{version}.zip"
  name "OnAir Companion"
  desc "Monitor Microsoft Teams meeting status and forward to homebridge-onair"
  homepage "https://github.com/alampros/onair-companion"

  depends_on macos: ">= :tahoe"

  app "OnAirCompanion.app"

  zap trash: [
    "~/Library/Preferences/com.alampros.OnAirCompanion.plist",
    "~/Library/Application Support/OnAirCompanion",
  ]
end

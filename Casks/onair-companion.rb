cask "onair-companion" do
  version "1.1.2"
  sha256 "6c71ba25f5c5ef27d55570589a5f9ea400a84eec77a31b51225b1cf40ef29ca2"

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

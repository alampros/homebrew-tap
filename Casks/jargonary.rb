cask "jargonary" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm: "86fdc5ac68eb0664708c54b8fe46f83a647cf299f45b96ddc94a15a81099d588",
         intel: "b05adf7f71514fa3f2a05aa2ab946a7126fcf85ab430366830a4348bb57fadc0"

  url "https://github.com/alampros/jargonary/releases/download/v#{version}/jargonary_#{version}_darwin_#{arch}.tar.gz"
  name "Jargonary"
  desc "Team-owned glossaries in one searchable UI"
  homepage "https://github.com/alampros/jargonary"

  binary "jargonary"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/jargonary"]
  end

  caveats <<~EOS
    Start with: jargonary -f /path/to/glossary.yaml -format yaml
  EOS
end

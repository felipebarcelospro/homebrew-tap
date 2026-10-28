cask "monet" do
  version "0.1.0"
  sha256 arm: "6c1f50e4cc1c2620d94a59f2446872ce871ad72d36c165682a88c3498834256e",
         intel: "32e06276953c3211a408a049b62d2badd2158adef1b121be2324b06259f7b937"

  on_arm do
    url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/Monet-#{version}-arm64-mac.dmg"
  end
  on_intel do
    url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/Monet-#{version}-x64-mac.dmg"
  end

  name "Monet"
  desc "Local-first Markdown vault with an interactive graph, CLI and MCP server"
  homepage "https://github.com/felipebarcelospro/monet"

  app "Monet.app"

  caveats <<~EOS
    The Monet desktop app is not notarised. Homebrew does not set the
    quarantine attribute, so the app opens without the Gatekeeper prompt.
  EOS
end

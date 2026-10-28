class Monet < Formula
  desc "Command line access to a local Monet Markdown vault"
  homepage "https://github.com/felipebarcelospro/monet"
  version "0.1.0"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/monet-darwin-arm64.gz"
      sha256 "dad307631c43f2612cef1f17a1defca1f423bbfb5f00bfa64e70af4482d83832"
    else
      url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/monet-darwin-x64.gz"
      sha256 "5d05474a68241ec04d972336681016980ab69ec7f2da32fe80adb6e0f6c3da6f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/monet-linux-x64-glibc-baseline.gz"
      sha256 "6dc080bda8207e3aa55e61ee6fc0e634596c85bea73b46f8dab3c11bbf58628f"
    else
      url "https://github.com/felipebarcelospro/monet/releases/download/v#{version}/monet-linux-arm64-glibc.gz"
      sha256 "0828f3dacd5c935698ec1309c3e73caa61817f87b0c6187bff1f69a828cacad0"
    end
  end

  def install
    if OS.mac?
      bin.install "monet-darwin-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "monet"
    else
      bin.install Hardware::CPU.intel? ? "monet-linux-x64-glibc-baseline" : "monet-linux-arm64-glibc" => "monet"
    end
  end

  def caveats
    <<~EOS
      The `monet` CLI looks for the desktop app in /Applications/Monet.app.
      Install it with: brew install --cask felipebarcelospro/tap/monet
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/monet --version")
  end
end

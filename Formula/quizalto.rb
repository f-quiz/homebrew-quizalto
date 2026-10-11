class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fdfe978"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vfdfe978/quizalto-darwin-arm64"
      sha256 "4eb097c8902e0ddc463faf7517f59768493aba3f26314c599f0b60078e756ff2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vfdfe978/quizalto-darwin-amd64"
      sha256 "80811a7ae4c9245898b4b6ce1500faa1ce3174800af97161d2188b908ae0262d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "quizalto-darwin-arm64" => "quizalto"
    else
      bin.install "quizalto-darwin-amd64" => "quizalto"
    end
  end

  test do
    system bin/"quizalto", "--help"
  end
end

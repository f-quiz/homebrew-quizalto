class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "be3703f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vbe3703f/quizalto-darwin-arm64"
      sha256 "5204d99798a82502371516e565e18a51a30c9247e07c269e986162b208420223"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vbe3703f/quizalto-darwin-amd64"
      sha256 "e25dd1e260005c1450233ea0cecbdae440a62bed0b61d15539e4c64f0b42972e"
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

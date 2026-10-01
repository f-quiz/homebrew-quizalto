class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "12af330"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v12af330/quizalto-darwin-arm64"
      sha256 "7e2293a45f2aaf9a7df52fbd1a38e1c955d566df15142304e3dadd25ccbbd373"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v12af330/quizalto-darwin-amd64"
      sha256 "cdd8da5bc386be43e428ab041b0ce2734da16e90152c434827aadd5973e4bcfc"
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

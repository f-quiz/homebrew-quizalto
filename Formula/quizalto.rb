class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ec50bb5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-arm64"
      sha256 "0b904300805dbaf72ff4029a3364288aa2ed25e310a6447373844849ab0acd4b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-amd64"
      sha256 "3408cd5b9632aac890b52153b638b70c1f1fbb719e67d63492f4fb3334b251c1"
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

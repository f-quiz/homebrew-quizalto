class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9d16d29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v9d16d29/quizalto-darwin-arm64"
      sha256 "063da22785df8b6cc7a698c6f5e4b128218cef91110c4d48bad6cf4d1021fcc5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v9d16d29/quizalto-darwin-amd64"
      sha256 "1a4ef98bd6434ed92f5447709b3f890d34ff9606c9e5a5260062ed49509bc795"
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

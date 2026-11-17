class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "383a47d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v383a47d/quizalto-darwin-arm64"
      sha256 "40a8a8305f4e8ff660a6d8b030ceba0de798ae6a2021dab4ebe9aa45ad2edee8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v383a47d/quizalto-darwin-amd64"
      sha256 "b6ba92c524bb48bf080258f1c025ae2c2b90e1a86a311af8032fa12aa6565039"
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

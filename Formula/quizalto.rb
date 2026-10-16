class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0ae1745"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0ae1745/quizalto-darwin-arm64"
      sha256 "ad41888a5c8d097379b76a54ad03c5e570b5ef5aa09ad2c6648899932baead61"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0ae1745/quizalto-darwin-amd64"
      sha256 "4c37e66af0bae6a1bd8ae8fe84c488c4912b0009ecb6ee49cb068e21cff9e4e4"
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

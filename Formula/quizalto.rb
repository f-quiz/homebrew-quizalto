class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8c4105e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8c4105e/quizalto-darwin-arm64"
      sha256 "57acb1450c334df37158a89efa4d5e85c23e1670e89981ed0f090ae995b062c4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8c4105e/quizalto-darwin-amd64"
      sha256 "d4d99c4714cf07d828e6149676257a0d7572d2171e1da30113a70ed055b3357b"
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

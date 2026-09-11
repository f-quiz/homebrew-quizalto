class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8c4105e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8c4105e/quizalto-darwin-arm64"
      sha256 "e8c95171a37742f8626265fe1285ef3eae8a760da6e3d09b524b64779af99086"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8c4105e/quizalto-darwin-amd64"
      sha256 "c49d2e8ebc7172dcf391da7a533aba3e7b6d4f7230c9d1f1716a47e51f2859c3"
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

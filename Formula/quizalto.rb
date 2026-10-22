class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "816aa12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v816aa12/quizalto-darwin-arm64"
      sha256 "8861fb2b53451f28273f4d4c0f9af6452ac68fa9fd8867c31042e212b39500f1"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v816aa12/quizalto-darwin-amd64"
      sha256 "16ce8ae3644cc8f2a3a66e2c07598b6b79b390169645dee8fd913f6a02fd6b5c"
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

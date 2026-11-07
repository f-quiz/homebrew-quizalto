class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1980518"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v1980518/quizalto-darwin-arm64"
      sha256 "ba3250e9d94596c9c34d1dcb804b188e414a71e067823df0dd9a4dcc2977f665"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v1980518/quizalto-darwin-amd64"
      sha256 "18e30169434878fca430f1b25f1ad4f68350b73930281a6efce08a46fee01adf"
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

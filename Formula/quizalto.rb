class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7be989e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-arm64"
      sha256 "2e5090b9c064d04b6478d6107663a98503a399e40003eddf1d00065d74e47da6"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v7be989e/quizalto-darwin-amd64"
      sha256 "7ce4e620ec34a9a5f56eefd04485aa7f41a6f2892de4370b16f15e54ae8999e2"
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

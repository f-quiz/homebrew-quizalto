class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "92e0fc6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v92e0fc6/quizalto-darwin-arm64"
      sha256 "33da9935d57c86a8d45011a6d183e539d6b27dcc1534495d6ac07233ded47325"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v92e0fc6/quizalto-darwin-amd64"
      sha256 "2d5d7b805dc2145c28f6761e854e49ab80a3e9e103d8520c98001bef12b21fe6"
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

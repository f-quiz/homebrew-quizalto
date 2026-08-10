class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3b68867"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v3b68867/quizalto-darwin-arm64"
      sha256 "1498c08ff1aef4a2df7d376a64674b87b1da7a6a4c0c4ee822536b74544b955e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v3b68867/quizalto-darwin-amd64"
      sha256 "c3226f3362c5fe733fc5e7de030527761e8600fba93c2641972eb6238acaf113"
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

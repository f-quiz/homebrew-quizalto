class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9d9998d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v9d9998d/quizalto-darwin-arm64"
      sha256 "33e317b6b46ea75c8ec646915714977ea96036de5cb11ca06a661d7426cb7c9f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v9d9998d/quizalto-darwin-amd64"
      sha256 "ad1c89e41cc97a360d389852ea46f5861cc055325287131ae7500a2aae78d090"
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

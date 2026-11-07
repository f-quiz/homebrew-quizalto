class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c7bc1a9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vc7bc1a9/quizalto-darwin-arm64"
      sha256 "78d8f5d9acc3d56c9935f0ed6bd592c5cfec91568d62a40fc86afd9a2e38cff6"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vc7bc1a9/quizalto-darwin-amd64"
      sha256 "33a99d3276cbcbcaa7ce67b34c603f68f8d4a5f042ffa283c22d0a881d301bc0"
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

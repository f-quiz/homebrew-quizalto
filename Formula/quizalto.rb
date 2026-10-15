class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1156c9e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v1156c9e/quizalto-darwin-arm64"
      sha256 "574f506b10fd6af1c372f642e863f03f479be388cdc17f40f194e177c7c3f573"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v1156c9e/quizalto-darwin-amd64"
      sha256 "3bca5c51aa791260c2bccaee3ea8739447beb9e7632e62fb91b4f44f28c5444a"
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

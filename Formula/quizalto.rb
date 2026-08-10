class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6777943"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v6777943/quizalto-darwin-arm64"
      sha256 "190c2c32194c8df755b04febaca66652057e55528678eb7d38ae1097c0a76b0b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v6777943/quizalto-darwin-amd64"
      sha256 "ca8265b79a24b6bd078cac791b88e56e2e049dca6158c5a83a9be13dfdb5d205"
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

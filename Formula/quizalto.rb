class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b1a0a71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb1a0a71/quizalto-darwin-arm64"
      sha256 "1c37d9cdfc8d4ecb47f853d389c35d9dfb9b4aeb274e9a2e08be4a3b95c94bcd"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb1a0a71/quizalto-darwin-amd64"
      sha256 "de571058e9d55f5d9b5b28f6ac851a51bbe0420c9da7f3416ddc7cd545bb8f1a"
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

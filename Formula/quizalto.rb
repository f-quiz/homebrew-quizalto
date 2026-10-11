class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c0e33b3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vc0e33b3/quizalto-darwin-arm64"
      sha256 "c1e86d3070b79a3b7c9d8e79ecbcbe0c3e86cd5220da6eb29da71489b740b15b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vc0e33b3/quizalto-darwin-amd64"
      sha256 "6299300a364b26a5d39968b4afafbcd5557d8e27d979d30526f2f1f076a8f19a"
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

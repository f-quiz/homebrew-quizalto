class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bb33313"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vbb33313/quizalto-darwin-arm64"
      sha256 "b30c0d01d03ca037b4282ae34f1c1b3ad379d32213628f5e98450655fa3205eb"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vbb33313/quizalto-darwin-amd64"
      sha256 "870a08768c244a6c45b8386be22feabb34084da3410e38a9e519a07aac292a13"
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

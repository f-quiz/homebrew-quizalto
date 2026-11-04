class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "81d35ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v81d35ef/quizalto-darwin-arm64"
      sha256 "e79b3549c4a2291bd93e42eef49bcbe55d171d39c7f0ebd57777037b6a9183cb"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v81d35ef/quizalto-darwin-amd64"
      sha256 "07cc88884acc3fd8962cc12506ad5104de42f146f64b14760ef0d39dd08c0a34"
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

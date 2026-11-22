class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5e9aa31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v5e9aa31/quizalto-darwin-arm64"
      sha256 "e023290ba9476f565a1076b81e842f0843617fd4766294f280694671744d54f8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v5e9aa31/quizalto-darwin-amd64"
      sha256 "186b731dc6b0ba0b680703cccc3ba4a06b63ce3c94f8aa218b477d7d4aff3150"
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

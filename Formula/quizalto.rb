class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "21b15bf"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v21b15bf/quizalto-darwin-arm64"
      sha256 "f05647c83c8a6b3f366690648d1eba61c45b76623e1d0e386e933b2971ac77a3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v21b15bf/quizalto-darwin-amd64"
      sha256 "50192fb40a7594e3d3ef60664f6556933e3effe47dccac0d2820cfaaf0181dfa"
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

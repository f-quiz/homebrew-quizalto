class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3d34a1d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v3d34a1d/quizalto-darwin-arm64"
      sha256 "ac2d5a5e1cf0dcad1a8b23c9f2db752526aab5b747404fda1bddb4f698bde627"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v3d34a1d/quizalto-darwin-amd64"
      sha256 "0348eddbaac586c05c9ef3eb4f755de66d5684bd3e451c3990f87b2b524c551d"
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

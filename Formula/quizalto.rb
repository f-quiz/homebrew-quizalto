class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "758a013"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v758a013/quizalto-darwin-arm64"
      sha256 "e5ed284e8c3169ff0a80e509e59c01a8470bf6792364b1e17995dcdc750de07f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v758a013/quizalto-darwin-amd64"
      sha256 "157fba4a4ed54608e53b89e7e25f660a820ebf9da903ad4f4544a2afb9103237"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5e4ab08"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v5e4ab08/quizalto-darwin-arm64"
      sha256 "9b99e1dad868261ee1dfbaa6095a6bb9483bb5fb52f012f10f4fc166c43c0674"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v5e4ab08/quizalto-darwin-amd64"
      sha256 "762bb80cd80d53561dbe7f6931a5385e2c8d728a0914b98b63c082872f0a143a"
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

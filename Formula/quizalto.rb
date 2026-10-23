class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "017b773"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v017b773/quizalto-darwin-arm64"
      sha256 "85ba4afe4a3308e560fc2f643ddff10e9dd210c6a8b38627a6c238930047bc80"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v017b773/quizalto-darwin-amd64"
      sha256 "a5c860b40bcb420fb4267eb4b5eb0edf508b3e226ed06cb122bdaf95aab2bf25"
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

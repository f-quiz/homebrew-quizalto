class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6ac8a6a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v6ac8a6a/quizalto-darwin-arm64"
      sha256 "e5de2fd39261b1eb2e0ebf562205799ea94c1598abf707e1f9cc6a1748687a63"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v6ac8a6a/quizalto-darwin-amd64"
      sha256 "bfab7a694690abf443b70a55959cd1d7d29cd1a7afd285bbbc2147dea2847d16"
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

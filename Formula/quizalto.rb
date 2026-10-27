class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "189515c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v189515c/quizalto-darwin-arm64"
      sha256 "283c1b8295718911800fbac69d6b36e40e7ca1e2862be0d646944bf1b31f4279"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v189515c/quizalto-darwin-amd64"
      sha256 "2a386c8a10b578987c853ee80fcbf2dab846f242b6be176f625eecd0d61b7220"
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

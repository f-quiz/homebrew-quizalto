class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5e66f5a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5e66f5a/quizalto-darwin-arm64"
      sha256 "617d859787e7f8828dd2f44a86c629f5da904e60c4b7a15caefef8a4cc2d8554"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5e66f5a/quizalto-darwin-amd64"
      sha256 "57f3cede0c60e3268306d1be9b98b7028250a92724c3f8d27144091660d18ec6"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5ef34fe"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5ef34fe/quizalto-darwin-arm64"
      sha256 "41769c829d9f39553d16c18cdd51d4bc1fe41975ca8d2c39d182552fa4dca103"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5ef34fe/quizalto-darwin-amd64"
      sha256 "a9173738785d87e7248d587bc4cbdca9ec9504ff937ab242ebe7e059a919b340"
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

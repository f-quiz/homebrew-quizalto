class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "744d576"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v744d576/quizalto-darwin-arm64"
      sha256 "388ac5e75b00298ec123e358f9335d3277de9e17dd7bf4ef3bfb44f701095b3f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v744d576/quizalto-darwin-amd64"
      sha256 "3cb266127901974d0018d8ab19f81e3bb29f50d45c9cbbd8ffe95411d74f493a"
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

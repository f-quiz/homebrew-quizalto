class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "13161e3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v13161e3/quizalto-darwin-arm64"
      sha256 "d85571354cb8b80376913e69f023608a0e50c3b103a9909958125213bbc856e0"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v13161e3/quizalto-darwin-amd64"
      sha256 "1c703f1b9d02886baf5c449498f066bddf09f8141f08ed304680bd67682aee2a"
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

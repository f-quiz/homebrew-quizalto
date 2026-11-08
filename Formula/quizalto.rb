class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3f05e42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v3f05e42/quizalto-darwin-arm64"
      sha256 "d272785940b868c7a60f920f3039b3c7395ac3615ad34cbf329ec7b0ebef6935"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v3f05e42/quizalto-darwin-amd64"
      sha256 "8049294a7248d60583e38319557f312e16cf8ad72b57e0398b7c76627645780b"
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

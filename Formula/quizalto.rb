class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7dcd53f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v7dcd53f/quizalto-darwin-arm64"
      sha256 "68177778c912d98537b86b3bf58ba253641901a933554fc51a856664c6d2e655"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v7dcd53f/quizalto-darwin-amd64"
      sha256 "b62a0aac6ebb5f681a04b83a6282cc41676354effe79d7d5525a3f20a24b0783"
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

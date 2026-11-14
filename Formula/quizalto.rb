class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7713ce0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v7713ce0/quizalto-darwin-arm64"
      sha256 "43f88a56d94242f1557afd16886a94aeec4fec9a7f8d844dd08b71a41b763849"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v7713ce0/quizalto-darwin-amd64"
      sha256 "190e79d06a2c31506cb856406ad2836b29e45c3df0177e98701a74147b703a1f"
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

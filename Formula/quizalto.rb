class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0351729"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v0351729/quizalto-darwin-arm64"
      sha256 "fb00edcc3caa7b4ca50b003ed2c21a25f964261870931300046bd3352530b6dd"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v0351729/quizalto-darwin-amd64"
      sha256 "091c8dd907ece7915a56c6041de07318e54fd828d878e1e1465c4ab49000bf8e"
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

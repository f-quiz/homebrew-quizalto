class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6af3066"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v6af3066/quizalto-darwin-arm64"
      sha256 "96516febfd097a5798ae4ec0651dd8d26aeb49ee4ab3ec6daf4d519d4ff69b2b"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v6af3066/quizalto-darwin-amd64"
      sha256 "2adc7725ca4065ff37becd135d08f8394bdcbbbab8842f5460a6b2c9d9ccbe6e"
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

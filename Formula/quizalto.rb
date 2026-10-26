class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6c6b204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v6c6b204/quizalto-darwin-arm64"
      sha256 "58717fda8c4f76a0b577b19598f1b24ca262b37c0380304620ec7f650c06d349"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v6c6b204/quizalto-darwin-amd64"
      sha256 "bbc3e8de3610b5a12ed04a9d2d1ba7e35ba165125f6a6d3a8947014e37dab450"
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

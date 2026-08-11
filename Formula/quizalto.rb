class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3b68867"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v3b68867/quizalto-darwin-arm64"
      sha256 "33470333d8c8a0a8b0a0aa094bb1aa57270e30c1a723b5a118b71d8f2aa892ff"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v3b68867/quizalto-darwin-amd64"
      sha256 "051eedc2dbf04683d3824468ecfb1d50883d6d761ac37d0c46109efde635bcef"
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

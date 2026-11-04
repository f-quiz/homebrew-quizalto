class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ce06438"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vce06438/quizalto-darwin-arm64"
      sha256 "ffcbc30c1a9ed73aa7f67944c13bb0e75b6e8a2114f2aea65529598fa076a93d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vce06438/quizalto-darwin-amd64"
      sha256 "d7dbc7f05bba452f9e85221e6f9c40eba83f13613ad1d55013c96f592a3e9d9a"
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

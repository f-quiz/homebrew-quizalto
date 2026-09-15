class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "6d27fe1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v6d27fe1/quizalto-darwin-arm64"
      sha256 "7b0c5fb709b4aeaa3a2da2b9fc56137b0035c2f6004e09e634f80b6c889a6c92"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v6d27fe1/quizalto-darwin-amd64"
      sha256 "780dc2249a5f66d6529e4e8b86e8d3c752a7fdded94c606c68befe65899c7081"
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

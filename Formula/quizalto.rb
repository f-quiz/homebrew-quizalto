class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "14c6c52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v14c6c52/quizalto-darwin-arm64"
      sha256 "bb3c308578ec2cd5bb9ee820358ab6b529a39a6b7ef65488ffe1e2fca269dde7"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v14c6c52/quizalto-darwin-amd64"
      sha256 "a348b2cfb8d533507289120b163e255a584f977af99e3afeb3f961b199111e6c"
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

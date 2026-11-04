class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e888a97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/ve888a97/quizalto-darwin-arm64"
      sha256 "6b5ddeb9f47892a749603ff8e606120e3f1a944a361108ca2d544b624c239c8d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/ve888a97/quizalto-darwin-amd64"
      sha256 "9bed215c09494b44b7d1bcdf4884e6e0cec4b31821418545667e0106bee8b28d"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3737acf"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v3737acf/quizalto-darwin-arm64"
      sha256 "3bcf8e46a0a9a67180bd7b31111b545f379fa7b5ae03c8cfad32fc90d93a5d68"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v3737acf/quizalto-darwin-amd64"
      sha256 "aea5be1b24a176bb01ef426ced672d98700abec799c349c0a74dcd903e0ad70d"
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

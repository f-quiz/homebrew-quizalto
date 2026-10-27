class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ff5690e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vff5690e/quizalto-darwin-arm64"
      sha256 "a0f9f2ef10d07f36fd9901f7c6a3ae165fc3a80c70a36332e2c096f8067a8a51"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vff5690e/quizalto-darwin-amd64"
      sha256 "5f05c04a366f6ca3a897d53ab59f971a937ccfe503897f60eba4d59f14a2cf2a"
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

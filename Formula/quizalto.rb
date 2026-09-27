class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "eb5379a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/veb5379a/quizalto-darwin-arm64"
      sha256 "c5b1651f1c7681c6622fe6076f9865ef1d0b3a505490f3561bcc045e84d35714"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/veb5379a/quizalto-darwin-amd64"
      sha256 "bb78b8a4bd4fa70a90aeacac1cb2bb32ed987d59dfc6d4b8a77e0af8095b7345"
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

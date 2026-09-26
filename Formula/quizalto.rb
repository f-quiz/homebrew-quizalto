class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e07ba3e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/ve07ba3e/quizalto-darwin-arm64"
      sha256 "9229598f7956c3a387d065aa5866ee8c662d986f5fc717d43beaddf47fb40bf2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/ve07ba3e/quizalto-darwin-amd64"
      sha256 "e2ccb00aa6f054f7fa3eb55318401301ba9f911c50b75734cd119af55aa25610"
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

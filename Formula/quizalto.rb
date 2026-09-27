class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "06d0ae7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v06d0ae7/quizalto-darwin-arm64"
      sha256 "2fd31e61af6014609b2a59fdc1590748a753f6af48b06b5c1b0d73f56636c2cf"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v06d0ae7/quizalto-darwin-amd64"
      sha256 "8cf7b2ce2e4fd9a5e803fb8f533ad1de2001dd5e8ff3bff41a51c75f6f2ec9fe"
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

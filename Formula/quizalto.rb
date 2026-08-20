class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ca107b8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vca107b8/quizalto-darwin-arm64"
      sha256 "1f9c37173332fee9dfbf75ce6d1b48658e5917a8d9719472e93b526ffef0b0f5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vca107b8/quizalto-darwin-amd64"
      sha256 "467776a994b573539a51e14cd9656b0550ba5edae9c07b000127ba23d315a893"
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

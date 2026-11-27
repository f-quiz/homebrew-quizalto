class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "196538b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v196538b/quizalto-darwin-arm64"
      sha256 "fd18bd7bb6b65dbd195449b9b07e076fb374bd2675b05f55fcdcf8e770a71921"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v196538b/quizalto-darwin-amd64"
      sha256 "fb908daee2b4b713a6b4ffc7f351ea59b879a4d337acbcbcf10f22ade9845ba2"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "071ceb9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v071ceb9/quizalto-darwin-arm64"
      sha256 "4b55d45dc699d2cdb6128bf9c8a977ba5955b3e1a10880e3ea977fd80b3e5b73"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v071ceb9/quizalto-darwin-amd64"
      sha256 "f1347974a288f7df03e9fc0bfea58cedbd665a5b018d1dee305e2a39d8d1e2c3"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4e947bc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v4e947bc/quizalto-darwin-arm64"
      sha256 "f8a5b169e6addb8fa4c9d35acd63e2b2a7bf79491a5a8ea0a8fa2aa8d62ad463"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v4e947bc/quizalto-darwin-amd64"
      sha256 "c48e4260b5892fe7492fa49de4c3490f8e19d41359f8fe8a4f326e28452ea490"
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

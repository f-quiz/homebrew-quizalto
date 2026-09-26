class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4eaa611"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v4eaa611/quizalto-darwin-arm64"
      sha256 "6e2ccacde2419880d7f9e502c8b740cee735dc347c8c4dda74e7cbfe28727b7e"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v4eaa611/quizalto-darwin-amd64"
      sha256 "9189c17e42afa07c451ad14f809c32f9f51cd69c71e00db649e78c8d15ce7f5f"
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

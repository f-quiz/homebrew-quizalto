class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "024141d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v024141d/quizalto-darwin-arm64"
      sha256 "b1e9e2aba310cf9656b2a32dc3be8837ac2ac37574433b18cc033da90c9f278d"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v024141d/quizalto-darwin-amd64"
      sha256 "8b8485eb86d23f3e3e166792772683efa71fcfbf175eebc5b30e7e2374d368cf"
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

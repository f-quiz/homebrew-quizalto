class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dfc4bfa"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdfc4bfa/quizalto-darwin-arm64"
      sha256 "a0309ba7097a950413f0b30ac22ae7b30cb57d619714072a5009259dd7d0af73"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdfc4bfa/quizalto-darwin-amd64"
      sha256 "97baac80e0a4a55387b3a6745b62dec44d2949b9644afa7efde995b30ea99d6d"
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

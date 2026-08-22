class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "048a12e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-arm64"
      sha256 "99d5c098ed2f8acc8e2f789f5a663325ddce6127a893f7ba6871ca71a45b4c92"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-amd64"
      sha256 "0a5063801862335b9f1d076a6db2dfac194e9b04bb37396a95efc876b9e8a4d9"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d1bbe8a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vd1bbe8a/quizalto-darwin-arm64"
      sha256 "35479016ebd963a3a69a4f5949cd690855b5829a065dd5a9d833bff2eb9d9250"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vd1bbe8a/quizalto-darwin-amd64"
      sha256 "06b94ce6fcd1b8f83b1c57372ff70938f145c366e1706d4f27704ca54bc39d18"
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

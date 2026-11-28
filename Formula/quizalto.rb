class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f2fa3f5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vf2fa3f5/quizalto-darwin-arm64"
      sha256 "8791e8c2256f87ba64711010d4cb34acc29b4e4698b30841507110ddda20b30a"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vf2fa3f5/quizalto-darwin-amd64"
      sha256 "e91744e6b7f4a2c82f9fd476929d1bbf9a6bd9c9fec443f050b81535c158aa82"
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

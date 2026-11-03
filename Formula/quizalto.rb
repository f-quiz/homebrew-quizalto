class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f71b774"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vf71b774/quizalto-darwin-arm64"
      sha256 "28ba0f1d120e961f91da3e87736a5751c091f51a0b3b7f0cadbeb68aa268f933"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vf71b774/quizalto-darwin-amd64"
      sha256 "523daebed341cb89aff74dc6228499a45c7beca0f33204d196e5cdecabef3c82"
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

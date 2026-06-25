class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "abe27f1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vabe27f1/quizalto-darwin-arm64"
      sha256 "654188667f23fb55e62db90abc6299dd0d9aa04aced68db3bbb75ce45bfbe16f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vabe27f1/quizalto-darwin-amd64"
      sha256 "016a9b08f5c1c9aec6b14cd04250af1bc010321f453d22ea052eec76bfc0d7bc"
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

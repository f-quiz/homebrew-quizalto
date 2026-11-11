class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "2fe49fd"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v2fe49fd/quizalto-darwin-arm64"
      sha256 "d9af6274898dbaf7b1cb3694b8f51410f43d051f0e371af0e020a0e5db4c3450"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v2fe49fd/quizalto-darwin-amd64"
      sha256 "24bd2d6e1bac9ebbac224cfff3e0e1d8edaa76bf4ade2de1d938b7fbdff4f77a"
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

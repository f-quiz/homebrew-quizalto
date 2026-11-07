class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "aac4eff"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vaac4eff/quizalto-darwin-arm64"
      sha256 "f57d2b35c0fa580035b506b430cb549105d95fe53929b4a7c4cd5f07c4e3daf8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vaac4eff/quizalto-darwin-amd64"
      sha256 "5b95fd53ccb52315ba66514f836bc35540d5bf693c02883c5f7d6bce149ffaeb"
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

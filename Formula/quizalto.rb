class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c84a6fe"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vc84a6fe/quizalto-darwin-arm64"
      sha256 "707f76941919da40f6b44cd5c2bf5414267c8fa963318766c67199d0b3975fb0"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vc84a6fe/quizalto-darwin-amd64"
      sha256 "c5948d728e44130e99e99b07b967fc530bdc2ebd3df8ad167ebbbe5aaca9cbba"
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

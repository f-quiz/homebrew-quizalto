class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f2a7077"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vf2a7077/quizalto-darwin-arm64"
      sha256 "9e317977b6e253edd933d2e5ced3ce285af4503eb42f81cc6c23bdc5aceb6da7"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vf2a7077/quizalto-darwin-amd64"
      sha256 "14527773f89b657ddc8cba0045448caab9aa36352aa29f108a36e30314cf8aa8"
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

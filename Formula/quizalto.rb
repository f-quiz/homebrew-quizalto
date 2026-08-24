class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0a1eb41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0a1eb41/quizalto-darwin-arm64"
      sha256 "7ad4b7114ca2d78dce1b89de4f0620861f00ddb66193318eeee0205fb09ee286"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0a1eb41/quizalto-darwin-amd64"
      sha256 "cba7bbaf99fdb7f7e971d2d99bf170fc4c56930961204b4e7dfb3ff3bc509d22"
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

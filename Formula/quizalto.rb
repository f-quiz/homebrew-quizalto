class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "bcf7695"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vbcf7695/quizalto-darwin-arm64"
      sha256 "4556133766379db62bbd09bb493a0ff7c8b3d99e718b6da91e748e7427518ced"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vbcf7695/quizalto-darwin-amd64"
      sha256 "0b129f3f252ad90002881182330404866c64c091842a9037554d5aec8100ac1b"
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

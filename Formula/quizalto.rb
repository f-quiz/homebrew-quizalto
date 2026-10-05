class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0657bca"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0657bca/quizalto-darwin-arm64"
      sha256 "8d8135ceaa41cdc9a6ddb01fb9166b49de5cceed346c708ae8acee67d63212dc"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0657bca/quizalto-darwin-amd64"
      sha256 "3acb02b3b19469dff7c87ec93e20705e830a23b68cfa691282f5a7ca7b8e1f6f"
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

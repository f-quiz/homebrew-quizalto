class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b50e058"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vb50e058/quizalto-darwin-arm64"
      sha256 "fd07a67d319522dbc08fc2f637834aea3fac03895a347503766c3777d8bdc667"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vb50e058/quizalto-darwin-amd64"
      sha256 "23e70fef6b0f9e82a34c5da94bd98e0ef7945606d708a017970243ce0eb794e0"
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

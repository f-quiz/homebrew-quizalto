class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cbbc55a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vcbbc55a/quizalto-darwin-arm64"
      sha256 "a251bf2d017871f7a539ac0288d39932cb24d7624c6560989f83e46ce224d713"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vcbbc55a/quizalto-darwin-amd64"
      sha256 "4701397aa4b30091b584ccf6918ad184db58383dff02b53975c97e4f41d1e5b6"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0ed3aeb"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v0ed3aeb/quizalto-darwin-arm64"
      sha256 "d1047e45e5a9af3be0ef6ff49286ff61ba23fa18e78217c1e48738164575290c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v0ed3aeb/quizalto-darwin-amd64"
      sha256 "8fde15cb7b2abc4d3d9b9cd187f5fb111705549c79c831d1f68de6064c935bd6"
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

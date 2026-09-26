class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e5a629b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/ve5a629b/quizalto-darwin-arm64"
      sha256 "c511ab6c2a76305d9531208141e6dfd3c68c982a63710b3822074bf42384f30d"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/ve5a629b/quizalto-darwin-amd64"
      sha256 "c9b13e162fb01f0a485ed28c8bf3f034ea3df6861842510a6f66c59d9e0e3c6a"
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

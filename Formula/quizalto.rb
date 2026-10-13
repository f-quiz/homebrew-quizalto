class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cb84f4f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vcb84f4f/quizalto-darwin-arm64"
      sha256 "670731750f4e58619c3a2a64ee0b39c6da0be52c76f5f81b2a7843ac5669c1a5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vcb84f4f/quizalto-darwin-amd64"
      sha256 "b2cdb00ee6e664209713e34c170e19b3315be18825ef66530982d2f554a38eea"
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

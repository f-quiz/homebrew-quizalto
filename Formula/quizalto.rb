class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8c9e5d3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8c9e5d3/quizalto-darwin-arm64"
      sha256 "8a6e50d1b7cf7f0baceaa11f5f7124bb140f12ac613cde6ebd9fe465d0e23b2a"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8c9e5d3/quizalto-darwin-amd64"
      sha256 "00de323d0c287ed27ddfe0c5136b03bd8df503102f8b6046a7104e3cd5848cf1"
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

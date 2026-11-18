class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9d15e0a"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v9d15e0a/quizalto-darwin-arm64"
      sha256 "9b8897d3a679736cf7d1c75414f9caf9fafb781b8a40035e1dd19c5e585a0cdb"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v9d15e0a/quizalto-darwin-amd64"
      sha256 "d6a30058edeabe8a7ece2e46834d6b5e5339fe445cea36c38926768d9280232b"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dfcb9a5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vdfcb9a5/quizalto-darwin-arm64"
      sha256 "c11973041836ba97ae863f5399d03946cbcea9b25ef47559487fda1c2f6dd176"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vdfcb9a5/quizalto-darwin-amd64"
      sha256 "47a2a7de1001f40a47a3ee405835450c3123538999dc745538a34707d3797cdf"
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

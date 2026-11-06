class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "233c657"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v233c657/quizalto-darwin-arm64"
      sha256 "6c301b167b88783d7f20c7b091929da12b305877e6cc8fb4e71f6488d0163fb4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v233c657/quizalto-darwin-amd64"
      sha256 "36456c591d67b00bdc5d02cb8dea7b931899d66be8a4f27a3ac2f90927f10e90"
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

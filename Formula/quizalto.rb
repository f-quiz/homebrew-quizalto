class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ccc88b4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vccc88b4/quizalto-darwin-arm64"
      sha256 "f1e3a00a56de16ceea84bb1ec02d5afdf208b392e3b158997201665960cafc7a"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vccc88b4/quizalto-darwin-amd64"
      sha256 "909d5d9c149756277e40e05d0fdb27b9c711f4f445ab0256d80c6f007d46d995"
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

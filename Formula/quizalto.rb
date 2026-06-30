class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a3ed846"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/va3ed846/quizalto-darwin-arm64"
      sha256 "1cd30d8259cfc7218039e4d2a3e73419b38712ea87df145848473c2fc608ec8a"
    end
    on_intel do
      url "https://www.quizalto.com/assets/va3ed846/quizalto-darwin-amd64"
      sha256 "1319f2c1dfc67c57042e9b7c482f445afc37921e835b3b84172b3cb5d8d3de1d"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "836452e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v836452e/quizalto-darwin-arm64"
      sha256 "1fa8ee006178db2565fe1841cbb236c8f2209f012bb9cdcf6bf8d8524358701f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v836452e/quizalto-darwin-amd64"
      sha256 "866088ecee64ce20cb29b50080b9fc311e273508641f8e08c633c59076aa6df2"
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

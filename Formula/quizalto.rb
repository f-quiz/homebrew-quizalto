class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "df6cf32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdf6cf32/quizalto-darwin-arm64"
      sha256 "5b088b0d1aeed1848a8544e169498dd1aa83f28fdc61feebd1655216b3cf8bd7"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdf6cf32/quizalto-darwin-amd64"
      sha256 "23ba907955301c6de234f270b9163db427f6cec872458ad358ac7342fbdf8f7d"
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

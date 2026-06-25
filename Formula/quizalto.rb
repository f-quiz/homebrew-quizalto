class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8b0e303"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v8b0e303/quizalto-darwin-arm64"
      sha256 "1addd3b25b7cbbb0887dac7f4c9971971e3b8f1459d043d68b0e0eff6aa9442c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v8b0e303/quizalto-darwin-amd64"
      sha256 "952c937dacd4931867f560d677405ba22092099566cb63b35307427ca91cd319"
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

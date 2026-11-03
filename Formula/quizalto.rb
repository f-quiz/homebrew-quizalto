class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5835ce5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v5835ce5/quizalto-darwin-arm64"
      sha256 "f6115b6d734f326b4dff58586600299ee261c833a998cb3fa70c835e428eca66"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v5835ce5/quizalto-darwin-amd64"
      sha256 "d41576a2a9585b3c4245156ba45b9541a1b0c2ccc181e81777698aceecab4828"
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

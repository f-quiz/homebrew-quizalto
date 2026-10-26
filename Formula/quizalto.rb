class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1d48773"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v1d48773/quizalto-darwin-arm64"
      sha256 "8812f93466d5867057b27ba32cebf89cd3c7e75ca299123fe8a382843bf5c9ed"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v1d48773/quizalto-darwin-amd64"
      sha256 "79c795ec3d57210c32b352e47d090d65120d83234024099627742de0036c260f"
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

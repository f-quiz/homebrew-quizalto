class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "758d71f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v758d71f/quizalto-darwin-arm64"
      sha256 "91b9048a1c00d389e337458c18b704152dcedbf9a6fde4c8a7f4326ac65f9299"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v758d71f/quizalto-darwin-amd64"
      sha256 "b96f8e9a45c882427238044dd2f1b58c492d29aa8f3679f8f3f65d48d46bc2ea"
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

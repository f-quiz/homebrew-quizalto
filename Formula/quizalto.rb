class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "9e5ceb6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v9e5ceb6/quizalto-darwin-arm64"
      sha256 "7c8f28b92d805711fbaa63fc309ed6bafc93f3a716541b3cf1ee14d0be9c713e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v9e5ceb6/quizalto-darwin-amd64"
      sha256 "5866a55faff5faf46c49f3a2e7864e26380b47abb0ee44ce4a8753b0ceea47b7"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7b50c6c"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v7b50c6c/quizalto-darwin-arm64"
      sha256 "397a419c3cc2ca57023cf97aa5db4ce63047634cb8ad0966687a055999056b48"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v7b50c6c/quizalto-darwin-amd64"
      sha256 "21626c814fa4e2ce9b5109149827b5df21affa7b2d358756d23a1ee078b4fb47"
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

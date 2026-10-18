class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dcbc787"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdcbc787/quizalto-darwin-arm64"
      sha256 "9a709f49775a07cb84032c98a8ac4cb6c5696f1bf0872e4a53bd2a506fc4ec8f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdcbc787/quizalto-darwin-amd64"
      sha256 "35860e4609a86c4da5015257205897596a5525b75e0ce0a8433e3e74385f7d61"
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

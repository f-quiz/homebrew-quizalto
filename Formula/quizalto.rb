class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c965628"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vc965628/quizalto-darwin-arm64"
      sha256 "aa8c375c4223dc092435f2c8c58da7b9a5432fe462c8db8b645eb0826261a8ad"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vc965628/quizalto-darwin-amd64"
      sha256 "b8673ce90276117daae061299d2aba3449251d6d6a49161b38e5ddbe98338972"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1dcf927"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v1dcf927/quizalto-darwin-arm64"
      sha256 "6ab31a3e24fc7d96797538f335d3fdb02fb35b715c2d5c7694ab3707cc3b35e2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v1dcf927/quizalto-darwin-amd64"
      sha256 "894e3a40096621e9cbefeb8c4bcfe3c56a641a35f51493517f3f7e8a39d006ea"
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

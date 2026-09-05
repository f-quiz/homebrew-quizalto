class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "c01a4ee"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vc01a4ee/quizalto-darwin-arm64"
      sha256 "b8866a3b8c16cf3c96f7c170bcb29921dde6f10c0603b644cb2a5ab6b34aebe8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vc01a4ee/quizalto-darwin-amd64"
      sha256 "fb21ba72720315f1d97666273f72fa5df9ac3def6bba181147a3c0a536f6c676"
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

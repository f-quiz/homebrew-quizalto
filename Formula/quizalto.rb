class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ad81b1d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vad81b1d/quizalto-darwin-arm64"
      sha256 "d998ccaa2af609611d4adf5424d06c3230d1c7f5e7cb226386727f072b84e5be"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vad81b1d/quizalto-darwin-amd64"
      sha256 "da80de8c87a62fbb3ea1d0d6eb4e264ae1d0a535bbdfbf348313f3e620e9499d"
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

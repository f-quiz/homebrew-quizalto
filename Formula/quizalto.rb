class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4d95ca0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v4d95ca0/quizalto-darwin-arm64"
      sha256 "1bf157b42ace398a81cbf345c8fc9f8b812282bfb7f9fb2e15697d9c021250b2"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v4d95ca0/quizalto-darwin-amd64"
      sha256 "97a6af256f2a6c3c240694df1d716d794f0b05d6a5b046218240c146c21a0e50"
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

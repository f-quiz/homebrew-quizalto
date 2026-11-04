class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3ea3a1b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v3ea3a1b/quizalto-darwin-arm64"
      sha256 "6290b442e93a82ae18d42e639b41d94651e7cd18942b2010a38fc04dd531a0d6"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v3ea3a1b/quizalto-darwin-amd64"
      sha256 "51e0562baf1ea17ff8d593ee713af6031f0e4216c5c8f90bb5343f907a1c429f"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "4f20535"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v4f20535/quizalto-darwin-arm64"
      sha256 "8bc67b72d18910a530c028233fa194e823df1276d4dbd8b5000257f6ebb129c9"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v4f20535/quizalto-darwin-amd64"
      sha256 "e5e45e4e3e256d8ec60516282787b11292ed64af44974d35b635f0e086c1c003"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f2223b7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vf2223b7/quizalto-darwin-arm64"
      sha256 "6ed52e2167713a8433ed0245a47060eef120b290aa37277652d027e8cb372f6f"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vf2223b7/quizalto-darwin-amd64"
      sha256 "72f154d6bf5bf4827850e18824d81d8124f47337c6074f3f89df2efb52909d78"
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

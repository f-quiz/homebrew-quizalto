class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1c2a252"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v1c2a252/quizalto-darwin-arm64"
      sha256 "fa16052834bf5afd43561ca1a5f2470455c93e0c66ec255d873e4f3f0c1d5002"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v1c2a252/quizalto-darwin-amd64"
      sha256 "26de5b794696e694f4041cf0105446b18fbf3cabc8eae69c4f0552aa6dc68506"
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

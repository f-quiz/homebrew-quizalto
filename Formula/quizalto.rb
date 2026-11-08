class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cbf72d5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/vcbf72d5/quizalto-darwin-arm64"
      sha256 "14483fbc0529751b17d42b4fa4be37d6150af9cba314022bde86a2cd17533eb0"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/vcbf72d5/quizalto-darwin-amd64"
      sha256 "339a065de2bed4d7ac4a0e09549a3123bbcdea5ed4399d70eb88d303c9eeca4d"
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

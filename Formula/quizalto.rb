class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "968bde9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v968bde9/quizalto-darwin-arm64"
      sha256 "582ca68e7066b96da8107828885d3443350a856ca75a7d312863fa6095775e21"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v968bde9/quizalto-darwin-amd64"
      sha256 "a73ded1a50aa16f87935252a2384e89763af47ba0ec866e76537529eedcd4680"
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

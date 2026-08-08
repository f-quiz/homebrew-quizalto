class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a090327"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va090327/quizalto-darwin-arm64"
      sha256 "58c81019568990023873be0833b0f049eed7b42a25186e30256ab13523d9993e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va090327/quizalto-darwin-amd64"
      sha256 "758cb589754e6094e0131ee3bc80375641a0adf72a2fc9378a94d06ad3e93aec"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "3becfe1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v3becfe1/quizalto-darwin-arm64"
      sha256 "483d34fe609a31057fb77f66dfe4f8e3ee5f47a57e386c7196831c65ea8b52ab"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v3becfe1/quizalto-darwin-amd64"
      sha256 "e71a09da92f714908dd8af27d4ff725568bdbb1f7222fb9e2aea27c8c29ca735"
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

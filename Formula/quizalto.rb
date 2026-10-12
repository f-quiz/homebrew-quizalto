class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b2f9c30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vb2f9c30/quizalto-darwin-arm64"
      sha256 "29e91f85847adea0d2d196c669cc442368826fe4556f46692ffaaa9cbfc850e9"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vb2f9c30/quizalto-darwin-amd64"
      sha256 "788fa62275ce5f9a365f32c4d172822fae2f845789bfe182bb87a241e81464cf"
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

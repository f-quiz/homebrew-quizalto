class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "750c4ac"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v750c4ac/quizalto-darwin-arm64"
      sha256 "f7cc8f328ba7c410744c45d63728d645575303b8e013815dfb25c10b66e22e12"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v750c4ac/quizalto-darwin-amd64"
      sha256 "3ca904f98019b62fe3289d7b94f333cb146a0a7ebeab15b035029baa3d961e2a"
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

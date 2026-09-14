class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ba19826"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vba19826/quizalto-darwin-arm64"
      sha256 "95bbeb35fb9ea823fbbfc11afe1e86d16c07bec9a6775b6007c324f1f684d2a5"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vba19826/quizalto-darwin-amd64"
      sha256 "de8e43d9e867dbc056d8c4be3dc65fd2e7b97d8481d6f5e3511af4c7b5a5bd44"
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

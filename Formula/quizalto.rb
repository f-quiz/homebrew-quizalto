class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8b77c1d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v8b77c1d/quizalto-darwin-arm64"
      sha256 "d1d809eaeb1a194d783ddd85d82a3c09894cdf2347ae7cea6e6e91f0e6347998"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v8b77c1d/quizalto-darwin-amd64"
      sha256 "9bbd5470702b8e1e249f87d77adedb6841d49ea5cb1073f66c344f18c8bf2346"
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

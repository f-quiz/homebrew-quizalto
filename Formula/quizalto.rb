class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8a3fa78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v8a3fa78/quizalto-darwin-arm64"
      sha256 "bfba8adcc51a4af2f93b84007e2579ee6a5507102020031c018e17318f5a317b"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v8a3fa78/quizalto-darwin-amd64"
      sha256 "eb6b3543477581789ee03532126de2133717f1cec113d768da29f6f56891ca8c"
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

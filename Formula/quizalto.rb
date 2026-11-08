class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1ef17de"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v1ef17de/quizalto-darwin-arm64"
      sha256 "d5fd0be3bf7d419dd45ffe899dec227718fbf036fa3483cafcab38eaff9ff8f6"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v1ef17de/quizalto-darwin-amd64"
      sha256 "66949d478598b1f548c9bfa73586ad744dd300eb91b556d12c35f2a88cce37a2"
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

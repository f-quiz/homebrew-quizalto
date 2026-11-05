class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "b8042e2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vb8042e2/quizalto-darwin-arm64"
      sha256 "f17a3341608482d4711d08210e9526b50c6a279fce8f397591db02cb383e87af"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vb8042e2/quizalto-darwin-amd64"
      sha256 "237d9f27943bfeda947b8c4f136ac1449ee1d1f40df0bfd4978e40da92721ad8"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5f93d93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v5f93d93/quizalto-darwin-arm64"
      sha256 "5b15ce7c917ccbba17fc28ef80e920b616b1782f3ee03ce13844a05c588d9dd3"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v5f93d93/quizalto-darwin-amd64"
      sha256 "f2d6851c23151c201a60037738b4f12bf93229cf44b2441c9d36be85878fab2c"
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

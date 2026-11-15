class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "d811507"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vd811507/quizalto-darwin-arm64"
      sha256 "f99a667b0103deeb829657c59781e4139d10af09e5bee87e1778b2a6ef6b3f26"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vd811507/quizalto-darwin-amd64"
      sha256 "072a46e34f66e34cffa647213ea6f5bbaccebe761bed5038b0731747348db352"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "fa9da64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vfa9da64/quizalto-darwin-arm64"
      sha256 "6af59ab9192c462d54b69301f01dd20f314c2126b4c12beb75b9a610e8bc7c6e"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vfa9da64/quizalto-darwin-amd64"
      sha256 "73795d63ffdc8f13fd3d34bf79b7622196f47eec7a6df3b1f67e026979e7e416"
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

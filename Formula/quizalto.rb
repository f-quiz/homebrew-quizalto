class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "77035bc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v77035bc/quizalto-darwin-arm64"
      sha256 "9f5cc68df245044f16f53f81a1691d71f959c9fa8cf2058050cc0051ebc0efd8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v77035bc/quizalto-darwin-amd64"
      sha256 "e048558e0ea2a70ee4eeb1bd7833d250b4b1ab30f622a1872fd525ecce4a3745"
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

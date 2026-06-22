class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a87d9e5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/va87d9e5/quizalto-darwin-arm64"
      sha256 "e97627e894dd894d22d63c6a5f0dbb4afebe8dff0fb67e422c64d0fb561b71b1"
    end
    on_intel do
      url "https://www.quizalto.com/assets/va87d9e5/quizalto-darwin-amd64"
      sha256 "5dfbda1457e729869bad164db9c6bfa632feffc6fcfa1edb35289c57cb7d4c28"
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

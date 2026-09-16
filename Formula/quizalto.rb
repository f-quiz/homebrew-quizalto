class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "00aca38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v00aca38/quizalto-darwin-arm64"
      sha256 "e0492bb27ab0602c455d0dd00030993300f8ef89e43e831c04a24c203f86dfb6"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v00aca38/quizalto-darwin-amd64"
      sha256 "ef93e9df94a0fe689ad70107cac229bc2e0abc28a0524a656dc88c3d35159340"
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

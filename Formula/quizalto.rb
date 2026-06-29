class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "27dd534"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v27dd534/quizalto-darwin-arm64"
      sha256 "2c2fa27d5183ad706099995dd7b632113f644f48b431629a113f8570c0c17333"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v27dd534/quizalto-darwin-amd64"
      sha256 "7fa9a9a451930a780576a3508e261993e9e2c77f64f44046a4ccd9afd4e4d4de"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1e752bd"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v1e752bd/quizalto-darwin-arm64"
      sha256 "f266eca06c333d32d04e49c761cb44669ab378cf7e4dd662716e0421e3d5084c"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v1e752bd/quizalto-darwin-amd64"
      sha256 "3cc10f4b7f245f6020505e9840bfb11e5100cd7842a00cd4894519f4e3a5c79a"
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

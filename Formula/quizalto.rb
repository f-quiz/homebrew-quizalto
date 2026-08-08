class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a8683ce"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-arm64"
      sha256 "9adbaff6f544622474dc91f41a8aba0076f06bae32e89a3736d835f1bba5c0da"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/va8683ce/quizalto-darwin-amd64"
      sha256 "292cd79c7e82b7a5c071a299bfa61186c38b80e416ee6503caa064cf9bb16f96"
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

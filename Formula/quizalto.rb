class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5c32cbf"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v5c32cbf/quizalto-darwin-arm64"
      sha256 "dc577048804d62f48a4d317ebe525e393b7c81d20dfc02725cacc85d9ea6734c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v5c32cbf/quizalto-darwin-amd64"
      sha256 "04137c28a3fcabd1da3f24b233608f4f66ee39054663d0a31f442cbe0c9a088b"
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

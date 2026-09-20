class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f65dcda"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vf65dcda/quizalto-darwin-arm64"
      sha256 "9d5fc89d337315fb359fae1e5cd42cd65d5ccd6f5db1567b239def890ac3131c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vf65dcda/quizalto-darwin-amd64"
      sha256 "0e6f514204f2b3800e39c378804660cee03e69f6f0ed14a506c38d13b34c4914"
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

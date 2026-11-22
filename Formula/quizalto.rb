class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f30c1f1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vf30c1f1/quizalto-darwin-arm64"
      sha256 "9e9b05d3461f038023903f4810882143f56ce43d29e87a173f77654969a214db"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vf30c1f1/quizalto-darwin-amd64"
      sha256 "a4f5a67ebbdaec159cc230b8ea3d54f2ea75a6aa122a506876c7354a7a00e1ab"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "03d121b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v03d121b/quizalto-darwin-arm64"
      sha256 "93ffbfb43acf2d55f871cc5469d63c51b880e3f09ed9d94518bb2403354e3d59"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v03d121b/quizalto-darwin-amd64"
      sha256 "f92e1fd0110d64234af777dfabe61e3807a0a66b1ae940e8d4a0bae7482f5e13"
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

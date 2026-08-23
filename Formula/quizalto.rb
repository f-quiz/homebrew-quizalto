class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "e57a414"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/ve57a414/quizalto-darwin-arm64"
      sha256 "ac4b74364648d9bf6b9ab3a86082cba98c4f8dc0dd7fa7bd540865556305aa07"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/ve57a414/quizalto-darwin-amd64"
      sha256 "cc4249373ae2f80ccb43abc37c3a66e03075880c4803f511d88aa49fb4be9a7d"
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

class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0c547ba"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0c547ba/quizalto-darwin-arm64"
      sha256 "75c54df2e48df98e6284bf7b9cd351fd896c9540e1b81ad3e3a7c22999eb4f97"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0c547ba/quizalto-darwin-amd64"
      sha256 "f40a522ba4a63ac819192832e84607b8d9eea34d42180faac80101b2bbb1edae"
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

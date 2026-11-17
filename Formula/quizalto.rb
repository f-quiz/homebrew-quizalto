class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "59288db"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v59288db/quizalto-darwin-arm64"
      sha256 "c7e59d8cbd23bf7f0e83d5b7094e2f0e0459b279999160ecbbd6ca255a9c8877"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v59288db/quizalto-darwin-amd64"
      sha256 "c6c5d5693cf9a9658ac858b44e8e481a5226b323cd4ebc6342a900179881be9d"
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

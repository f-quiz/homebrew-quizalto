class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "8c84bec"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v8c84bec/quizalto-darwin-arm64"
      sha256 "ad29c7372b77ac48891ed2915a5d0f4b52fcee3d970be715727101d7eb277088"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v8c84bec/quizalto-darwin-amd64"
      sha256 "ad0a286c431899b12c4a5cef1d700be7aed38d8d0b11a5cb3e5419a6e9649ba7"
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

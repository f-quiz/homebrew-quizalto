class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "65052ed"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v65052ed/quizalto-darwin-arm64"
      sha256 "825729c06388540f7e6f6e29df61b53bb0e85c096ac2cdc9b91dc50da2d80608"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v65052ed/quizalto-darwin-amd64"
      sha256 "f6524876a83f991aadf648693f0ede1b411a4c45424514562fc902b36b9045e1"
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

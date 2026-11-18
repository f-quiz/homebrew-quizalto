class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "cf8c513"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/vcf8c513/quizalto-darwin-arm64"
      sha256 "7f2bf1d857646edb19f585564c704ed3bd9409dd9609a0e6c2f7a75c27562cf4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/vcf8c513/quizalto-darwin-amd64"
      sha256 "ca18758869ae391bea892980b60430ca7bdeed32ee7e26b2d877c532a6b9288f"
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

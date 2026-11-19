class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "7080ae8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v7080ae8/quizalto-darwin-arm64"
      sha256 "e37f8d41e8313388d9ca786f836da317802849098f55c790350654645ad31e4c"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v7080ae8/quizalto-darwin-amd64"
      sha256 "40573b38ff7099664e364773231d6a2eb643382b68b4a38f154fa0649d131662"
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

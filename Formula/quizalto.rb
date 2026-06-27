class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "ec50bb5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-arm64"
      sha256 "e58cb3272285c816360bc0797f02a9d42aee6da465f8bf77ffee9d9af0e3aed8"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vec50bb5/quizalto-darwin-amd64"
      sha256 "774f2a67f76288f47a9d1753fc3d3110dd5e1d1876442d8e6412183df5f0473b"
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

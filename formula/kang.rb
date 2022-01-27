require "formula"

class kang < Formula
  desc "Use endless terraform versions in different shell sessions independently"
  homepage "https://github.com/brownhash/kang"
  url "https://github.com/brownhash/kang/releases/download/v1.0.0-beta/kang_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "389b9858d799e03e65fe6cdb6f62e0c28ef0b2e4c1794c1b62e7e47b9809c7c0"
  head "https://github.com/brownhash/kang.git"

  def install
    bin.install "kang"
  end

  # Homebrew requires tests.
  test do
    assert_match "1.0.0-beta", shell_output("#{bin}/kang -v", 2)
  end
end
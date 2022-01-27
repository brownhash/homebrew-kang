class Kang < Formula
  desc "Use endless terraform versions in different shell sessions independently"
  homepage "https://github.com/brownhash/kang"
  version "1.0.0-beta"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/brownhash/kang/releases/download/v1.0.0-beta/kang_darwin_amd64.tar.gz"
    sha256 "fa49007fc8c3fef09c023352c3703469422e3e4d87e252142135c4617155bf43"
  end

  def install
    bin.install "kang"
  end
end

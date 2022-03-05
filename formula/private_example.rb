require_relative "lib/private"

class Example < Formula
  desc "Tap for a private Github repository"
  homepage "https://github.com/owner/repository"
  version "1.0.0"

  # For MacOs Intel based systems
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/owner/repository/releases/download/1.0.0/example_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ba833d556af4a47923fcb1234ca31492369808eea2165c733f5b5fd25c3885a7"
  end

  # For MacOs M1 based systems
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/owner/repository/releases/download/1.0.0/example_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "4c5d45c7ad41cd217aa9f1bc7654921161a2554cb3e5084f3188ffd347ccc7b9"
  end

  # For Linux X64 based systems
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/owner/repository/releases/download/1.0.0/example_linux_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "801e95a44248765a111qab0d650321f286cd6bf506c88ae571db3d0624dac37e"
  end
  
  def install
    bin.install "example"
  end

  test do
    system "#{bin}/example --version && #{bin}/example --help"
  end

end

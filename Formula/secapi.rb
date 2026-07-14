class Secapi < Formula
  desc "CLI for source-traceable SEC filings and structured data"
  homepage "https://docs.secapi.ai"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-1.3.0.tgz"
  sha256 "4caf32bae1ccbf9f01ed2b7be7b3ed0f5c39c6ec09aafc73a8f8d72989939f23"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "--min-release-age=0", "--before=2099-01-01T00:00:00Z", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "SEC API CLI", shell_output("#{bin}/secapi --help 2>&1")
  end
end

class Secapi < Formula
  desc "Command-line interface for SEC filings, statements, and issuer data"
  homepage "https://docs.secapi.ai/cli"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-1.4.0.tgz"
  sha256 "42813b903526914fd0afadbc2cb0a345f68a40fee3399f514c259b360eeff7e8"
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

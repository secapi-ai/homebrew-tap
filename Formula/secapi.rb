class Secapi < Formula
  desc "Command-line client for SEC data shaped for investors and agents"
  homepage "https://secapi.ai/developers"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-0.4.0.tgz"
  sha256 "7b9196abd8eff8fa2d37fd5e26b444c070f5beba6963b4f333b6927c8aa8f51e"
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

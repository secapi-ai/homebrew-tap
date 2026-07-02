class Secapi < Formula
  desc "Command-line client for SEC data shaped for investors and agents"
  homepage "https://secapi.ai/developers"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-1.2.0.tgz"
  sha256 "b4b896039af577b59e65f3ee4df33c765459056239e3935ab2d98f99e10564e7"
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

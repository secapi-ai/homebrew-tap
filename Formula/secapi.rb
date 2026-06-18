class Secapi < Formula
  desc "Command-line client for SEC data shaped for investors and agents"
  homepage "https://secapi.ai/developers"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-0.5.0.tgz"
  sha256 "43c18395f0b7cfc4b2a7e51ab3bd91a176cbf101e7099c8a2dc800ea2fda5b56"
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

class Secapi < Formula
  desc "SEC API CLI for SEC data shaped for investors and agents"
  homepage "https://secapi.ai/developers"
  url "https://registry.npmjs.org/@secapi/cli/-/cli-0.3.0.tgz"
  sha256 "ee7640cd809343cce2e2cc248171c13952c298afce701efe2dd6384cfece2552"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "SEC API CLI", shell_output("#{bin}/secapi --help 2>&1", 0)
  end
end

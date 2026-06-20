class Unleash < Formula
  desc "Single-script MDM bypass for macOS — bypass, suppress, monitor, and audit"
  homepage "https://github.com/mateussiqueira/unleash"
  url "https://raw.githubusercontent.com/mateussiqueira/unleash/main/unleash-standalone.sh"
  version "1.6.0"
  sha256 "ac848a0ef040d23a6aedc38a011e4bab85ce2d3e7c03254178175be0e8176177"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v#{version}", shell_output("#{bin}/unleash version")
  end
end

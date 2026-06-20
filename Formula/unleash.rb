class Unleash < Formula
  desc "Single-script MDM bypass for macOS — bypass, suppress, monitor, and audit"
  homepage "https://github.com/mateussiqueira/unleash"
  url "https://raw.githubusercontent.com/mateussiqueira/unleash/main/unleash-standalone.sh"
  version "1.6.1"
  sha256 "9b3bba7299a3e581412b2f0bd639273179265e698323de2b6cd73cc9fafe6e4b"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v#{version}", shell_output("#{bin}/unleash version")
  end
end

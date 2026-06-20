class Unleash < Formula
  desc "Single-script MDM bypass for macOS — bypass, suppress, monitor, and audit"
  homepage "https://github.com/mateussiqueira/unleash"
  url "https://raw.githubusercontent.com/mateussiqueira/unleash/main/unleash-standalone.sh"
  version "1.5.0"
  sha256 "1a0d187a148b08c30c57821fecc60b2300eafef2c4e9d2955315cec5be6f7b80"
  license "MIT"

  def install
    bin.install "unleash-standalone.sh" => "unleash"
  end

  test do
    assert_match "unleash v#{version}", shell_output("#{bin}/unleash version")
  end
end

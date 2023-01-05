class Azd < Formula
  desc "Azure Developer CLI"
  homepage "https://github.com/azure/azure-dev"
  url "https://github.com/Azure/azure-dev/releases/download/azure-dev-cli_0.4.0-beta.1/azd-darwin-amd64.zip"
  version "0.4.0-beta.1"
  sha256 "141657238c75f314ab049904ef3ce031ff3def69834bde57066f22e15d8698b6"
  license "MIT"

  def install
    bin.install "azd-darwin-amd64" => "azd"
  end

  test do
    version_output = shell_output "#{bin}/azd version"
    assert_equal 0, $CHILD_STATUS.exitstatus
    assert_match "azd version", version_output
  end
end

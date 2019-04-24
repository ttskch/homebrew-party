class Party < Formula
  desc "CLI command to calculate amounts of pizzas and drinks for a party."
  homepage "https://github.com/ttskch/party"
  url "https://github.com/ttskch/party/archive/1.0.0.tar.gz"
  sha256 "821aee8c0f28ce25d42a440673782c186641c98dd30e56e2d79891cb82ca6347"
  depends_on "composer" => :build

  def install
    system "composer", "install"
    bin.install ["bin/party"]
    lib.install ["lib/src", "lib/config", "lib/vendor"]
  end
end

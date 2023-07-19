class Nexttrace < Formula
    desc "An open source visual route tracking CLI tool"
    homepage "https://mtr.moe"
    version "v1.1.2"
    url "https://github.com/xgadget-lab/nexttrace/archive/refs/tags/v1.1.2.tar.gz"
    sha256 "61ad44d8daf511506d2d072ecb0284b4c4bc31891ae5adea451ecb0700d29584"
    license "GPL-3.0"

    depends_on "go" => :build
  
    def install
      system "go", "build", *std_go_args(ldflags: "-X 'github.com/xgadget-lab/nexttrace/config.Version=v1.1.2' -s -w")
    end
  
    test do
      assert_match "NextTrace", shell_output("#{bin}/nexttrace -V")
    end
  end

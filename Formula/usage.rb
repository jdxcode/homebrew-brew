require "language/go"

class Usage < Formula
  desc "parse flags in bash – modern getopt replacement"
  homepage "https://github.com/jdxcode/usage"
  url "https://github.com/jdxcode/usage.git", :tag => "v0.0.1", :revision => "2929c34de305eec9c572a25c4dc73a481bbd8970"
  head "https://github.com/jdxcode/usage.git"

  depends_on "go" => [:build]

  def install
    system "go", "build", "-ldflags",
      "-s -w -X main.Version=#{version} -X main.Commit=#{stable.specs[:revision]} -X main.BuiltBy=homebrew",
      "-o", bin/"usage"
  end

  test do
    system "#{bin}/usage"
  end
end


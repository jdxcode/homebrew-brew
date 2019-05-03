class Latlon < Formula
  desc "CLI to get current latitude and longitude"
  homepage "https://github.com/jdxcode/latlon"
  url "https://github.com/jdxcode/latlon.git",
      :tag => "1.0.0", :revision => "c04424db099cee8f0f97d3e91a61d15e0d2e68b0"
  head "https://github.com/jdxcode/latlon.git"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/latlon"
  end
end


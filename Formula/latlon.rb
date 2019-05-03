class Latlon < Formula
  desc "CLI to get current latitude and longitude"
  homepage "https://github.com/jdxcode/latlon"
  url "https://github.com/jdxcode/latlon.git", :tag => "v1.0.1", :revision => "26f540e5ed61c174d2204d6b323ec85a0c19b6ec"
  head "https://github.com/jdxcode/latlon.git"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/latlon"
  end
end


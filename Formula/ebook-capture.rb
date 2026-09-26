# Template for satanmoo/homebrew-tap (Formula/ebook-capture.rb).
# .github/workflows/release.yml fills in 0.2.0 and a346e6b2ba08cba44498b7d99589d8bb1ef38ee6291401a35ddd2701ea4f6999 and commits
# the result to the tap on every release; don't edit the tap's copy by hand.
class EbookCapture < Formula
  desc "Capture ebook pages from 교보도서관 or a Chrome web viewer into a PDF"
  homepage "https://github.com/satanmoo/ebook-capture"
  url "https://github.com/satanmoo/ebook-capture/releases/download/v0.2.0/ebook-capture-v0.2.0-macos.tar.gz"
  version "0.2.0"
  sha256 "a346e6b2ba08cba44498b7d99589d8bb1ef38ee6291401a35ddd2701ea4f6999"
  license "MIT"

  depends_on macos: :sonoma

  def install
    bin.install "ebook-capture"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/ebook-capture --version").strip
  end
end

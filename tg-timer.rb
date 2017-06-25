class TgTimer < Formula
  desc "A program for timing mechanical watches"
  homepage "https://tg.ciovil.li"
  url "https://github.com/vacaboja/tg/archive/v0.5.0.tar.gz"
  sha256 "c88889bd391212d9104bca9918fb573a4ff96a752717b4a779d33f637c633ce7"
  head "https://github.com/vacaboja/tg.git", :branch => "master"

  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"
  depends_on "gnome-icon-theme"

  def install
    ENV["LIBTOOL"] = "glibtool"
    ENV["LIBTOOLIZE"] = "glibtoolize"
    system "./autogen.sh"
    system "./configure"
    system "make"
    bin.install "tg-timer"
    man1.install "docs/tg-timer.1"
  end

  test do
    system "man", "tg-timer"
  end
end

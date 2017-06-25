class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://tg.ciovil.li"
  url "https://github.com/vacaboja/tg.git", :tag => "v0.5.0"
  version "0.5.0"
  head "https://github.com/vacaboja/tg.git", :branch => "master"

  depends_on "automake" => :run
  depends_on "gtk+3"
  depends_on "portaudio"
  depends_on "fftw"
  depends_on "gnome-icon-theme"

  def install
    system "./autogen.sh"
    system "./configure"
    system "make"
    bin.install "build/tg"
    mv "#{bin}/tg", "#{bin}/tg-timer"
    man1.install "docs/tg-timer.1.gz"
  end

  test do
    system "man tg-timer"
  end
end

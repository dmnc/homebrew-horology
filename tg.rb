class Tg < Formula
  desc "Marcello Mamino's Watch Timing Software"
  homepage "https://github.com/vacaboja/tg"
  url "https://github.com/vacaboja/tg.git", :revision => "d4acda0aa94c112228731d4ac1d51fa1d4e1944e"
  version "0.3.2"
  head "https://github.com/vacaboja/tg.git", :branch => "master"

  # devel do
  #   url "https://github.com/vacaboja/tg.git", :branch => "test"
  # end

  depends_on "gtk+"
  depends_on "portaudio"
  depends_on "fftw"

  def install
    system "make"
    bin.install "tg"
    bin.install "tg-lt"
  end

  test do
    system "#{bin}/tg"
  end
end

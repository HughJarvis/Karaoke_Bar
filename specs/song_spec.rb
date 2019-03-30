require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Shake a Leg", "AC-DC")
  end

  def test_get_song_title
    assert_equal("Shake a Leg", @song1.title)
  end

  def test_get_song_artist
    assert_equal("AC-DC", @song1.artist)
  end




end

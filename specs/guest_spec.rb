require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../room.rb')


class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Dionne", "Push It")

    @room1 = Room.new("Rod Stewart", 8)
  end

  def test_get_guest_name
    assert_equal("Dionne", @guest1.name)
  end

  def test_get_fave_song
    assert_equal("Push It", @guest1.fave_song)
  end

  def test_guest_can_add_song_to_playlist
    @guest1.add_song_to_playlist(@song2, @room1)
    assert_equal([@song2], @room1.playlist)
  end
end

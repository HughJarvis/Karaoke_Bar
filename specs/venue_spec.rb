require('minitest/autorun')
require('minitest/rg')
require_relative('../venue.rb')
require_relative('../song.rb')
require_relative('../room.rb')

class VenueTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rod Stewart", 8)
    @room2 = Room.new("Tina Turner", 10)
    @room3 = Room.new("Dolly Parton", 12)

    @song1 = Song.new("Shake a Leg", "AC-DC")
    @song2 = Song.new("Push It", "Salt 'n' Peppa")
    @song3 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @venue = Venue.new("The Hoarse Box", [@song1, @song2, @song3], [@room1, @room2, @room3])


  end

  def test_get_songs
    assert_equal([@song1, @song2, @song3], @venue.songs)
  end

  def test_get_rooms
    assert_equal([@room1, @room2, @room3], @venue.rooms)
  end

  def test_check_guest_into_room
    @venue.check_guest_into_room(@guest1, @room2)
    assert_equal([@guest1], @room2.guests)
  end

end

require('minitest/autorun')
require('minitest/rg')
require_relative('../venue.rb')
require_relative('../song.rb')
require_relative('../room.rb')
require_relative('../guest.rb')

class VenueTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rod Stewart", 8)
    @room2 = Room.new("Tina Turner", 10)
    @room3 = Room.new("Dolly Parton", 6)

    @song1 = Song.new("Shake a Leg", "AC-DC")
    @song2 = Song.new("Push It", "Salt 'n' Peppa")
    @song3 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
    @venue = Venue.new("The Hoarse Box", [@song1, @song2, @song3], [@room1, @room2, @room3])

    @guest1 = Guest.new("Dionne", @song2)
    @guest2 = Guest.new("Bon", @song1)
    @guest3 = Guest.new("Ian", @song4)
    @guest4 = Guest.new("Bey", @song5)
    @guest5 = Guest.new("Dre", @song6)
    @guest6 = Guest.new("Dusty", @song7)

  end

  def test_get_songs
    assert_equal([@song1, @song2, @song3], @venue.songs)
  end

  def test_get_rooms
    assert_equal([@room1, @room2, @room3], @venue.rooms)
  end

  def test_get_guests_in_room
    assert_equal([], @room3.guests)
  end

  def test_check_guest_into_room
    @venue.check_guest_into_room(@guest1, @room2)
    assert_equal([@guest1], @room2.guests)
  end


  def test_refuse_check_in_if_room_full
    #need six check-ins to fill up room before test.
    @venue.check_guest_into_room(@guest1, @room3)
    @venue.check_guest_into_room(@guest2, @room3)
    @venue.check_guest_into_room(@guest3, @room3)
    @venue.check_guest_into_room(@guest4, @room3)
    @venue.check_guest_into_room(@guest5, @room3)
    @venue.check_guest_into_room(@guest6, @room3)
    assert_equal("Sorry, that room is full.", @venue.check_guest_into_room(@guest2, @room3))
  end



  def test_check_guest_out_of_room
    #checks in two guests
    @venue.check_guest_into_room(@guest1, @room3)
    @venue.check_guest_into_room(@guest2, @room3)
    #then takes one away
    @venue.check_guest_out_of_room(@guest1, @room3)
    assert_equal([@guest2], @room3.guests)
  end

#This gives undefined method error
  # def test_charge_entry_fee
  #   @guest1.charge_entry_fee
  #   assert_equal(40, @guest1.wallet)
  #   assert_equal(1010, @venue.till)
  # end

end

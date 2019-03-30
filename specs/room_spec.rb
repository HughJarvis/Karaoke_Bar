require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Rod Stewart", 8)

  end

  def test_get_room_name
    assert_equal("Rod Stewart", @room1.name)
  end

  def test_get_room_capacity
    assert_equal(8, @room1.capacity)
  end

  def test_get_guests
    assert_equal([], @room1.guests)
  end





end

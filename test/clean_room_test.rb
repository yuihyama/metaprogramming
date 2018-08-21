#!/usr/bin/env ruby

require 'minitest/autorun'
require './clean_room'

class CleanRoomTest < Minitest::Test
  def test_clean_room
    assert_equal 8, CleanRoom.new.instance_eval { cube(2) }

    assert_output("8\n") { p CleanRoom.new.instance_eval { cube(2) } }
    assert_output("8\n") { puts CleanRoom.new.instance_eval { cube(2) } }
  end
end

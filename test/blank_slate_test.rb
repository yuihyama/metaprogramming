#!/usr/bin/env ruby

require 'minitest/autorun'
require './blank_slate'

class BlankSlateTest < Minitest::Test
  def setup
    @blank_slate = MyClass.new
  end

  def test_blank_slate
    assert_equal 'a ghost method', @blank_slate.to_s

    assert_output("\"a ghost method\"\n") { p @blank_slate.to_s }
    assert_output("a ghost method\n") { puts @blank_slate.to_s }
  end
end

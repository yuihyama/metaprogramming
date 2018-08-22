#!/usr/bin/env ruby

require 'minitest/autorun'
require './dynamic_method_class_eval'

class DynamicMethodClassEval < Minitest::Test
  def setup
    @obj = MyClass.new
  end

  def test_dynamic_method_class_eval
    assert_equal 'B', @obj.my_method('A')
    assert_equal 'b', @obj.my_method('a')

    assert_output("\"B\"\n") { p @obj.my_method('A') }
    assert_output("B\n") { puts @obj.my_method('A') }
    assert_output("b\n") { puts @obj.my_method('a') }
  end
end

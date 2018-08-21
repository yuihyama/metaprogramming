#!/usr/bin/env ruby

require 'minitest/autorun'
require './class_extension'

class ClassExtensionTest < Minitest::Test
  def test_class_extension
    assert_equal 'a class method', MyClass.my_method

    assert_output("\"a class method\"\n") { p MyClass.my_method }
    assert_output("a class method\n") { puts MyClass.my_method }
  end
end

#!/usr/bin/env ruby

require 'minitest/autorun'
require './context_probe'

class ContextProbeTest < Minitest::Test
  def setup
    @obj = MyClass.new
  end

  def test_context_probe
    assert_equal 'hello, world', @obj.instance_eval { @hello_world }
    assert_equal 1, @obj.instance_eval { @num }

    assert_output("\"hello, world\"\n") { p @obj.instance_eval { @hello_world } }
    assert_output("hello, world\n") { puts @obj.instance_eval { @hello_world } }
    assert_output("1\n") { puts @obj.instance_eval { @num } }
  end
end

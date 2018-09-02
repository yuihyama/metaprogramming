#!/usr/bin/env ruby

require 'minitest/autorun'
require './code_processor'

class CodeProcessorTest < Minitest::Test
  def test_code_processor
    assert code_processor
    assert_equal ["1 + 1\n", "2 * 2\n"], code_processor
  end
end

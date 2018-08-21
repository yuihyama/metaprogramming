#!/usr/bin/env ruby

class MyClass; end

class << MyClass
  def my_macro(arg)
    arg
  end
end

class MyClass
  my_macro :x
end

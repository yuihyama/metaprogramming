#!/usr/bin/env ruby

class MyClass; end

module MyModule
  def my_method
    'a class method'
  end
end

class << MyClass
  include MyModule
end

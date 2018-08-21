#!/usr/bin/env ruby

class MyClass < BasicObject
  def method_missing(name, *args)
    'a ghost method'
  end
end

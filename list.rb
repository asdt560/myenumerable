require 'myenumerable.rb'

class MyList
  include MyEnumerable

  def initialize(*nums)
    @list = nums.flatten
  end

  def each
    @list.each { |num| puts num }
  end
  
end

list = MyList.new(1, 2, 3, 4)

list.all? {|e| e < 5}

list.all? {|e| e > 5}

list.any? {|e| e == 2}

list.any? {|e| e == 5}

list.filter {|e| e.even?}

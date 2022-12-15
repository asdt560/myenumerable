# This is a custom Enumerable modules with the filter, any? and all? methods
module MyEnumerable
  def filter(&block)
    result = []
    @list.each do |elem|
      result.push(elem) if block.call(elem) == true
    end
    result
  end

  def any?(&block)
    result = false
    @list.each do |elem|
      result = true if block.call(elem) == true
    end
    result
  end

  def all?(&block)
    result = []
    @list.each do |elem|
      result.push(elem) if block.call(elem) == true
    end
    result.length == @list.length
  end
end

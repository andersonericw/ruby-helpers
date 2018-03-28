class Object
  def true?
    return ['true', true, '1', 1].include?(self)
  end

  def assert(value2)
    raise "#{self} does not equal #{value2}" unless self == value2
    return true
  end
end

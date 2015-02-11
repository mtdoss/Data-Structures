class MinMaxStack
  def initialize()
    @values = []
  end

  def push(val)
    if @values.empty?
      @values << {
        value: val,
        max: val,
        min: val
      }
    else
      new_max = [val, self.max].max
      new_min = [val, self.min].min
      @values << {
        value: val,
        max: new_max,
        min: new_min
      }
    end
  end

  def pop(val)
    (@values.pop)[:value]
  end

  def max
    @values.empty? ? nil : (@values.last)[:max]
  end

  def min
    @values.empty? ? nil : (@values.last)[:min]
  end

end

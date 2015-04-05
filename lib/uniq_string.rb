require 'set'
def uniq_str?(str)
  raise ArgumentError unless str.is_a?(String)
  already_seen = Set.new
  str.each_char do |c|
    if already_seen.include?(c)
      return false
    else
      already_seen.add(c)
    end
  end

  true
end

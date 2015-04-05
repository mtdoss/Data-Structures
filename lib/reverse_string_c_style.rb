def reverse_c_style!(str)
  mid = str.length / 2
  0.upto(mid-1) do |i|
    str[i], str[-1-i] = str[-1-i], str[i]
  end

  "\0" + str
end

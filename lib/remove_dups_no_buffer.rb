def remove_dups_no_buffer(str)
  len = str.length - 1
  str.each_char.with_index do |c, i|
    (i+1).upto(len) do |idx|
      str.slice!(idx) if str[idx] == c
    end
  end

  str
end

def replace_spaces(str)
  str.gsub(/\p{blank}/, '%20')
end

# @param {String} str
# @return {Integer}
def my_atoi(str)
  i = str.strip.to_i
  return i >= 0 ? [2147483647, i].min : [-2147483648, i].max
end

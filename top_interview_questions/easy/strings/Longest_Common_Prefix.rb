# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.length == 0
  first_string = strs.first; longest_string = ""; cur_sub_string = ""

  first_string.each_char do |char|
    cur_sub_string << char
    filtered = strs.select { |cur_string| cur_string.index(cur_sub_string) == 0 }
    return longest_string unless filtered.length == strs.length
    longest_string = cur_sub_string * 1
  end
end

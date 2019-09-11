# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  hash = {}
  result_index = 0
  arr = s.downcase.split('')
  arr.each_with_index do |char, i|
    if hash[char]
      hash[char] += 1 
    else 
      hash[char] = 1
    end
  end
  p hash
  hash.each { |(k,v)| return arr.index(k) if v == 1  }
  return -1
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  # s.split('').sort == t.split('').sort
  hash = Hash.new(0)
  s.downcase.split('').each { |c| hash[c] += 1 }
  t.downcase.split('').each { |c1| hash[c1] -= 1 }
  hash.values.all? { |v| v == 0 }
end

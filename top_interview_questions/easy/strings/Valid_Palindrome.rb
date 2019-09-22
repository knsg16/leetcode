# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s1 = s.downcase.gsub(/\W+/, '')
  s1 == s1.reverse
end

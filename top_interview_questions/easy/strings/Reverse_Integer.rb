# @param {Integer} x
# @return {Integer}
def reverse(x)
  result = x.to_s.reverse!
  return 0 if result.to_i.bit_length >= 32
  return "-#{result}".to_i if x < 0
  result.to_i
end

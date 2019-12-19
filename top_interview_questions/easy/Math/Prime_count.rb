require 'prime'

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  Prime.each(n-1).count
end
# def count_primes(n)
#   count = 0
#   (1...n).each do |num|
#     count += 1 if is_prime(num)
#   end
#   count
# end

# def is_prime(num)
#   return true if num == 2
#   return false if num <= 1
#   return false if num % 2 == 0
  
#   (3...num-1).each do |i|
#     if num % i == 0
#       return false
#       break
#     end
#   end
#   return true
# end

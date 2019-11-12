# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp(n, Hash.new)
end

def dp(n, memo)
  return 0 if n < 0
  return 1 if n == 0
  return memo[n] if memo.has_key?(n)
  memo[n] = dp(n-1, memo) + dp(n-2, memo)
end

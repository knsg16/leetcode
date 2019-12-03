# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  best, curr = nums.first, 0
  nums.each { |n| best = [best, curr = [n, curr+n].max].max }
  best
end

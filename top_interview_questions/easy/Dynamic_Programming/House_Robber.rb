# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.length == 0
  robbed = nums[0]
  not_robbed = 0
  for idx in 1..(nums.length - 1) do
    num = nums[idx]
    prev_robbed = robbed
    prev_not_robbed = not_robbed
    robbed = num + prev_not_robbed
    not_robbed = [prev_not_robbed, prev_robbed].max
  end
  return [not_robbed, robbed].max
end

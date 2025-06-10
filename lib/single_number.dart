int singleNumber(List<int> nums) {
  int result = 0;
  for (var num in nums) {
    result ^= num;
  }
  return result;
}


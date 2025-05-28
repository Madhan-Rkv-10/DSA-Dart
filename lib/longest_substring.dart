part of 'dsa_dart.dart';

int lengthOfLongestSubstrings(String s) {
  int maxLength = 0;
  int left = 0;
  int right = 0;
  Set<String> uniqueChars = {};

  while (right < s.length) {
    print("right$right ");
    if (!uniqueChars.contains(s[right])) {
      uniqueChars.add(s[right]);
      maxLength = maxLength > uniqueChars.length
          ? maxLength
          : uniqueChars.length;
      right++;
    } else {
      uniqueChars.remove(s[left]);
      left++;
    }
  }
  return maxLength;
}

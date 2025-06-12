
bool areAnagrams(String s1, String s2) {
  // If lengths are different, they can't be anagrams
  if (s1.length != s2.length) return false;

  Map<String, int> charCount = {};

  // Count characters from s1
  for (int i = 0; i < s1.length; i++) {
    String char = s1[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  // Subtract character counts using s2
  for (int i = 0; i < s2.length; i++) {
    String char = s2[i];
    if (!charCount.containsKey(char) || charCount[char] == 0) {
      return false;
    }
    charCount[char] = charCount[char]! - 1;
  }

  return true;
}

bool isValidParenthesis(String s) {
  List<String> stack = [];
  Map<String, String> bracketMap = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (int i = 0; i < s.length; i++) {
    String char = s[i];

    if (bracketMap.containsKey(char)) {
      String topElement = stack.isNotEmpty ? stack.removeLast() : '#';
      if (topElement != bracketMap[char]) {
        return false;
      }
    } else {
      stack.add(char);
    }
  }

  return stack.isEmpty;
}

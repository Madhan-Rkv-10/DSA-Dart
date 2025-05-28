part of './dsa_dart.dart';

bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    while (left < right && !isAlphaNumeric(s[left])) {
      left++;
    }
    while (left < right && !isAlphaNumeric(s[right])) {
      right--;
    }

    if (toLower(s[left]) != toLower(s[right])) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

bool isAlphaNumeric(String c) {
  int code = c.codeUnitAt(0);
  return (code >= 48 && code <= 57) || // 0-9
      (code >= 65 && code <= 90) || // A-Z
      (code >= 97 && code <= 122); // a-z
}

String toLower(String c) {
  int code = c.codeUnitAt(0);
  if (code >= 65 && code <= 90) {
    return String.fromCharCode(code + 32);
  }
  return c;
}

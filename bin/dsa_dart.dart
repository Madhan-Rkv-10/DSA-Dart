import 'package:dsa_dart/dsa_dart.dart' as dsa_dart;

void main(List<String> arguments) {
  print('Hello world: ${dsa_dart.calculate()}!');
  print(" isPalindrome${dsa_dart.isPalindrome("MADHAN")}");
  print(
    " longest sub string${dsa_dart.lengthOfLongestSubstrings("madhanmasdas")}",
  );
    print("get single unpaired number${singleNumber([4, 1, 2, 1, 2])"}); // 4
}

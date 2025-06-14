BigInt bigFactorial(int n) {
  BigInt result = BigInt.one;
  for (int i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }
  return result;
}

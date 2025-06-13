int maxProfit(List<int> prices) {
  // Step 1: Start with first day's price as the lowest price.
  int minPrice = prices[0];

  // Step 2: We haven't made any profit yet
  int maxProfit = 0;

  // Step 3: Loop through remaining days
  for (int i = 1; i < prices.length; i++) {
    // If today’s price is lower than what we’ve seen before, update minPrice
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      // Else, calculate the profit if we sold today
      int profit = prices[i] - minPrice;

      // If this profit is more than what we’ve seen before, update maxProfit
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }

  return maxProfit;
}

%testTradeStock.m
load googlePrices 
endValue=tradeStock(100,price,lows,peaks); 
disp(['With an initial investment of $100, the end value is ' num2str(endValue)]); 
endValue=tradeStock(100000,price,lows,peaks);
disp(['With an initial investment of $100,000, the end value is ' num2str(endValue)]);   
endValue=tradeStock(2000,price,lows,peaks); 
disp(['With an initial investment of $2,000, the end value is '  num2str(endValue)]); 

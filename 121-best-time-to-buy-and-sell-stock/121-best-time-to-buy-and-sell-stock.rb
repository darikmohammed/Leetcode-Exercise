# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    minimun_price = prices[0]
    
    prices.each do | price |
        if price > minimun_price 
            profit = [profit, price - minimun_price].max
        else
            minimun_price = price
        end
       
    end
    profit    
#     prices.each_with_index do | price, idx |
#         current_profit = 0
#         (idx+1..prices.length-1).each do |i|
#             current_profit = [current_profit, prices[i] - price].max
#         end
#         profit = [current_profit, profit].max
        
#     end
#         profit
    
end
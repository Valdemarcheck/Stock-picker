
def stock_picker(stocks)
    best_stock = [0, 0]
    stocks.each do |day|
        stocks.each do |comparison_day|
            break if day == comparison_day
            if day - comparison_day > best_stock[1] - best_stock[0]
                best_stock[0] = comparison_day
                best_stock[1] = day
            end
        end
    end
    best_stock[0] = stocks.find_index(best_stock[0])
    best_stock[1] = stocks.find_index(best_stock[1])
    best_stock
end

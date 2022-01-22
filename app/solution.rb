class Stock
  def price(date = Time.now)
    rand(1.0..100000.0).round(2) # random price
  end
end


class Portfolio
  def initialize(*stocks)
    @stocks = stocks
  end

  def profit(from, to, annualized = false)
    from_date_arr = from.split("-").map(&:to_i) # convert de string date in an array of integers with year, month and day values
    start_date = Time.new(from_date_arr[2], from_date_arr[1], from_date_arr[0]) # convert the array of integers with the date values in Time object

    to_date_arr = to.split("-").map(&:to_i)
    end_date = Time.new(to_date_arr[2], to_date_arr[1], to_date_arr[0])

    if annualized # annualized return (bonus)
      initial_price = 0
      final_price = 0
      @stocks.each do |stock|
        initial_price += stock.price(start_date)
        final_price += stock.price(end_date)
      end
      revenue = (final_price - initial_price) / initial_price # relative revenue
      relative_time = (end_date - start_date) / (365 * 60 * 60 * 24) # converts the relative time because Time - Time = difference of seconds as float
      annualized_return = (((1 + revenue)**(1 / relative_time)) - 1) # annualized return formula
      annualized_return.round(2)
    else # regular profit
      @stocks.inject(0) { |acc, stock| acc + (stock.price(end_date) - stock.price(start_date)) } # regular profit method as the sum of stock's price differences between given dates
    end
  end
end

class Stock
  def price(date = Time.now)
    rand(1.0..100000.0).round(2)
  end
end

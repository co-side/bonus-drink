class BonusDrink
  def self.total_count_for(amount)
    return '引数は0または正の整数を与えてください' if amount.to_s !~ /\A([1-9][0-9]*|0)\z/

    amount = amount.to_i
    total_count = amount
    while (amount / 3) != 0
      total_count += amount / 3
      amount = amount / 3 + amount % 3
    end
    total_count
  end
end

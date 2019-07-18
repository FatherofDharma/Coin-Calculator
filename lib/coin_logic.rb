require 'pry'

class Coin
  def initialize(money)
    @money = money
    @change = []
  end

  def converter()
    until @money == 0
      if @money >= 25
        quarters = @money / 25
        @money -= quarters * 25
        @change.push("#{quarters} quarters")
      elsif @money >= 10
        dimes = @money / 10
        @money -= dimes * 10
        @change.push("#{dimes} dimes")
      elsif @money >= 5
        nickels = @money / 5
        @money -= nickels * 5
        @change.push("#{nickels} nickels")
      elsif @money < 5 && @money > 0
        @change.push("#{@money} pennies")
        @money = 0
      end

    end

    @change.join(" ")
  end
end

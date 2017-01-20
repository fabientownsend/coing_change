class CoinChange
  @coins = [2, 1]

  def self.change(amount)
    changes = Array.new
    if amount == 0
      changes
    else
      @coins.each do |coin|
        #amount = 3
        #coint = 2
        if coin <= amount
          changes << amount / coin
          #amount = amount % coin
        end
      end
    end
  end
end

RSpec.describe CoinChange do
  # 1 2 5 10 20 100 200

  it "return one when I give one" do
    expect(CoinChange.change(1)).to eq([1])
  end

  it "return zero when I give zero" do
    expect(CoinChange.change(0)).to eq([])
  end

  it "return 1, 2 when I give 3" do
    expect(CoinChange.change(3)).to eq([1, 1])
  end

  it "return 5 2 2 when I give 9" do
    expect(CoinChange.change(3)).to eq([])
  end
end

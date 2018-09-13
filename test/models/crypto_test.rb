require 'test_helper'

class CryptoTest < ActiveSupport::TestCase

  test "is not valid without a id" do
  crypto = Crypto.new(id: nil)
    assert_not crypto.valid?
end
test "assigns an id" do
  crypto = Crypto.new(id: 1)
  assert_equal 1, crypto.id
 end
 test "assigns a symbol" do
   crypto = Crypto.new(symbol: "BTC")
   assert_equal "BTC", crypto.symbol
  end
  test "assigns a user id" do
    crypto = Crypto.new(user_id: 2)
    assert_equal 2, crypto.user_id
   end
   test "assigns a cost per" do
     crypto = Crypto.new(cost_per: "0.99")
     assert_equal "0.99e0".to_f, crypto.cost_per
    end
    test "assigns an amount owned" do
      crypto = Crypto.new(amount_owned:"0.1e4")
      assert_equal "0.1e4".to_f, crypto.amount_owned
     end
end

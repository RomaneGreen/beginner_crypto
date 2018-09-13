require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'user cannot be saved without entering password' do
    user = User.new(email: 'john@example.com')
    assert_not user.valid?
  end
  test 'user cannot be created without email ' do
    user = User.new(email: '')
    assert_not user.valid?
  end
end

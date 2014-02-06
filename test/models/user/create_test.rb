require 'test_helper'

class User::CreateTest < ActiveSupport::TestCase
  def test_create_1_record
    assert_difference "User.count", 1 do
      create_random_user
    end
  end

  def create_random_user
    random = SecureRandom.hex(8)
    User.create! email: "#{random}@example.com",
                 password: random,
                 password_confirmation: random
  end
end

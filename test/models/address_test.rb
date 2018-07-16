# == Schema Information
#
# Table name: addresses
#
#  id              :bigint(8)        not null, primary key
#  adress          :string
#  neighborhood_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  headquarter_id  :bigint(8)
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
 test "adress attributes must not be empty" do
     adress = Address.new
      assert adress.invalid?
      assert adress.errors[:adress].any?
      assert adress.errors[:neighborhood_id].any?
      assert adress.errors[:headquarter_id].any?
      assert_equal [:adress, :neighborhood_id, :headquarter_id], adress.errors.keys
  end
end

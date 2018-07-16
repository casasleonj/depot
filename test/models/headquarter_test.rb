# == Schema Information
#
# Table name: headquarters
#
#  id                  :bigint(8)        not null, primary key
#  name_headquarters   :string
#  number_headquarters :integer
#  address_id          :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class HeadquarterTest < ActiveSupport::TestCase
   test "headquarter attributes must not be empty" do
     headquarter = Headquarter.new
      assert headquarter.invalid?
      assert headquarter.errors[:name_headquarters].any?
      assert headquarter.errors[:number_headquarters].any?
      assert headquarter.errors[:address_id].any?
      assert_equal [:name_headquarters, :number_headquarters, :address_id], headquarter.errors.keys
  end
end

# == Schema Information
#
# Table name: cities
#
#  id            :bigint(8)        not null, primary key
#  name_city     :string
#  code_city     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :bigint(8)
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase

  test "city attributes must not be empty" do
     city = City.new
      assert city.invalid?
      assert city.errors[:name_city].any?
      assert city.errors[:code_city].any?
      assert city.errors[:department_id].any?
      assert_equal [:name_city, :code_city, :department_id], city.errors.keys
  end
end
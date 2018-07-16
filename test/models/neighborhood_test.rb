# == Schema Information
#
# Table name: neighborhoods
#
#  id                :bigint(8)        not null, primary key
#  name_neighborhood :string
#  city_id           :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class NeighborhoodTest < ActiveSupport::TestCase
 
 test "neighborhood attributes must not be empty" do
     neighborhood = Neighborhood.new
      assert neighborhood.invalid?
      assert neighborhood.errors[:name_neighborhood].any?
      assert neighborhood.errors[:city_id].any?
      assert_equal [:name_neighborhood, :city_id], neighborhood.errors.keys
  end
end

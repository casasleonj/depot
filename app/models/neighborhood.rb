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

class Neighborhood < ApplicationRecord
  belongs_to :city, optional: true
  
 validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
 validates :name_neighborhood, uniqueness: true
 validates :city_id, presence: true
end

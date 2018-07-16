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

class Address < ApplicationRecord
  belongs_to :neighborhood, optional: true
  has_one :headquarter
  
 validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
 validates :adress, uniqueness: true, length: { in: 8..55, too_long: "%{count} characters is the maximum allowed" }, allow_nil: true
 validates :neighborhood_id, :headquarter_id, presence: true
end

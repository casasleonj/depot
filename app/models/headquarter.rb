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

class Headquarter < ApplicationRecord
  belongs_to :address
  
 validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
 validates :name_headquarters, :number_headquarters, uniqueness: true
 validates :address_id, presence: true
end

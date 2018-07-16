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

class City < ApplicationRecord
 belongs_to :department, optional: true
 has_many :neighborhood, dependent: :destroy
    
    
 validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
 validates :code_city, uniqueness: true, length: { in: 1..3 }, allow_nil: true
 validates :department_id, presence: true
end

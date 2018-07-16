# == Schema Information
#
# Table name: departments
#
#  id              :bigint(8)        not null, primary key
#  name_department :string
#  code_department :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Department < ApplicationRecord
 has_many :city, dependent: :destroy
   
 # validates for all fields   
 validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
 validates :code_department, uniqueness: true, length: { in: 1..2 }, allow_nil: true
   
end

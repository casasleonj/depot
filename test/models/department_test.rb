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

require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
    fixture_path
  test "department attributes must not be empty" do
     department = Department.new
      assert department.invalid?
      assert department.errors[:name_department].any?
      assert department.errors[:code_department].any?
      assert_equal [:name_department, :code_department], department.errors.keys
  end
end

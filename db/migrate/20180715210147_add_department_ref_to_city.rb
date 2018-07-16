class AddDepartmentRefToCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :cities, :department, foreign_key: true
  end
end

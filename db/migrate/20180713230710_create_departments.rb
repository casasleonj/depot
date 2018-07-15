class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name_department
      t.integer :code_department

      t.timestamps
    end
  end
end

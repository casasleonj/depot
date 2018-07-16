class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name_city
      t.integer :code_city

      t.timestamps
    end
  end
end

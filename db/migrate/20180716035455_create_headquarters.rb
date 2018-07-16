class CreateHeadquarters < ActiveRecord::Migration[5.2]
  def change
    create_table :headquarters do |t|
      t.string :name_headquarters
      t.integer :number_headquarters
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end

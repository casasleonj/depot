class AddHeadquarterToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_reference :addresses, :headquarter, foreign_key: true
  end
end

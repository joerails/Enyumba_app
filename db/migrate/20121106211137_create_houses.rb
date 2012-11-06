class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :landlord_id
      t.string :location
      t.string :category
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end

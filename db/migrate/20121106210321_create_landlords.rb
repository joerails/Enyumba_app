class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name
      t.string :email
      t.integer :mobile_No
      t.string :location
      t.integer :national_id

      t.timestamps
    end
  end
end

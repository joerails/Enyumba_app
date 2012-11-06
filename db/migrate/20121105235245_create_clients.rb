class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :mobile_No
      t.string :address
      t.integer :post_code

      t.timestamps
    end
  end
end

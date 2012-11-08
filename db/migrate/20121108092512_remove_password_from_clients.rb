class RemovePasswordFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :password
  end

  def down
    add_column :clients, :password, :string
  end
end

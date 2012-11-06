class AddAvatarColumnToClients < ActiveRecord::Migration
  def self.up
    add_attachment :clients, :avatar
  end

  def self.down
    remove_attachment :clients, :avatar
  end
end

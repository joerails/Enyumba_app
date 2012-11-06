class AddAvatarColumnToHouses < ActiveRecord::Migration
  def self.up
    add_attachment :houses, :avatar
  end

  def self.down
    remove_attachment :houses, :avatar
  end
end

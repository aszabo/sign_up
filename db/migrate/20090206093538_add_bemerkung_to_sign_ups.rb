class AddBemerkungToSignUps < ActiveRecord::Migration
  def self.up
    add_column :sign_ups, :Bemerkung, :text
  end

  def self.down
    remove_column :sign_ups, :Bemerkung
  end
end

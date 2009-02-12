class AddWahlToSignUps < ActiveRecord::Migration
  def self.up
    add_column :sign_ups, :rails, :boolean
    add_column :sign_ups, :merb, :boolean
    add_column :sign_ups, :sinatra, :boolean
  end

  def self.down
    remove_column :sign_ups, :sinatra
    remove_column :sign_ups, :merb
    remove_column :sign_ups, :rails
  end
end

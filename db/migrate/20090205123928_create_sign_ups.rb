class CreateSignUps < ActiveRecord::Migration
  def self.up
    create_table :sign_ups do |t|
      t.string :e_mail
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :sign_ups
  end
end

class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login
      t.belongs_to :person
      t.timestamps
    end
    change_table :users do |t|
      t.index :login, :unique => true
      t.index :person_id, :unique => true
    end
  end

  def self.down
    drop_table :users
  end
end

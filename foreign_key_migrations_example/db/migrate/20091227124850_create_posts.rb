class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.text :body
      t.belongs_to :author, :references => :people
      t.timestamps
    end
    change_table :comments do |t|
      t.belongs_to :post
    end
  end

  def self.down
    drop_table :posts
  end
end

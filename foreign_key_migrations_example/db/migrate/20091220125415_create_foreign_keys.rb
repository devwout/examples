class CreateForeignKeys < ActiveRecord::Migration
  def self.up
    add_foreign_key "comments", ["author_id"], "people", [:id]
    add_foreign_key "users", ["person_id"], "people", [:id]
  end

  def self.down
  end
end

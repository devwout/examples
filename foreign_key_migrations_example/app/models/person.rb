class Person < ActiveRecord::Base
  has_one :user
  has_many :comments, :foreign_key => :author_id
  has_many :posts, :foreign_key => :author_id, :dependent => :destroy
end

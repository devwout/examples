class Post < ActiveRecord::Base
  belongs_to :author, :class_name => "Person"
  has_many :comments
end

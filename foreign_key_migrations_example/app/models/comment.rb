class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => "Person"
  belongs_to :post
end

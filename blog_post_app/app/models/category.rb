class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :blog_posts
end

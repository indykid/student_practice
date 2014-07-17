class BlogPost < ActiveRecord::Base
  belongs_to :category
  attr_accessible :author, :content, :title
end

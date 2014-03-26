class Post < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :content, :title, :created_at, :updated_at
end

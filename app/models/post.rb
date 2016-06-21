class Post < ActiveRecord::Base
    attr_accessible :content, :title

    validates_presence_of :title, :on => :create
    validates_presence_of :content, :on => :create
end

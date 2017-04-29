class Article < ActiveRecord::Base
  belongs_to :user
  has_many :tags
  has_many :comments, :as => :commentable, through: :users
  # has_many :likes, :as => :likeable
end

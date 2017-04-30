class User < ActiveRecord::Base
  has_many :friends, class_name: :"User", foreign_key: :"friends_id"
  belongs_to :friend, class_name: "User"
  has_many :articles
  has_many :tags, through: :articles
  has_many :comments, :as => :commentable
  # has_many :likes, :as => :likeable


end

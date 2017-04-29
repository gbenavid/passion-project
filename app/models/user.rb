class User < ActiveRecord::Base
  has_many :friends, class_name: :"User", foreign_key: :"friends_id"
  belongs_to :friend, class_name: "User"
  has_many :articles

end

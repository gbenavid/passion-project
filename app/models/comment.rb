class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: :true
  belongs_to :article
  belongs_to :user

  has_many :replies, class_name: "Comment", foreign_key: "replied_id"
  belongs_to :reply, class_name: "Comment"
  has_many :comments, :as => :commentable, through: :reply, source: :comment

end

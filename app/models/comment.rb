# app/models/comment.rb
class Comment < ApplicationRecord
  include Visible
  
  belongs_to :article
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy
end

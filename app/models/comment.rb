class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :parent, class_name: "Comment", optional: true
  has_many :children, class_name: "Comment", foreign_key: "parent_id"
  scope :roots, -> { where(parent_id: nil) }
end

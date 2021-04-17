class FollowRequest < ApplicationRecord
  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }
  belongs_to :recipient, class_name: "User"
  belongs_to :sender, class_name: "User"
end

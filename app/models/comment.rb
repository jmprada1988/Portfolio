class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  validates :content, presence: true, length: {minimum: 10, maximum: 10000}

  after_create_commit { CommentBroadcastJob.perform_later(self) }
  
end

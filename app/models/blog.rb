class Blog < ApplicationRecord
	extend FriendlyId
  	friendly_id :title, use: :slugged
  	
  	validates_presence_of :title, :body

  	belongs_to :topic
end

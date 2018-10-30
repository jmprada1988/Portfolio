class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	def self.react
	  where(subtitle: 'React')
	end

	scope :RoR_items, -> { where(subtitle: 'Ruby on Rails')}
end

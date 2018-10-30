class Portfolio < ApplicationRecord
	validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

	def self.react
	  where(subtitle: 'React')
	end

	scope :RoR_items, -> { where(subtitle: 'Ruby on Rails')}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "https://via.placeholder.com/500?text=Placeholder.com+rocks!"
		self.thumb_image ||= "https://via.placeholder.com/300?text=Placeholder.com+rocks!"
	end
end



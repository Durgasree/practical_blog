class User < ApplicationRecord
	has_many :friends
 	has_many :users, :source => :friend, :through => :friends
	
	validates_presence_of :name,:website_url,:description

	before_create :create_short_url

	def create_short_url
		# bitlink = client.shorten(long_url: website_url)
		# self.short_url = bitlink.link
	end

	
end

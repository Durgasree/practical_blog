class SearchController < ApplicationController

	def new
	end

	def search_users
		query = "%#{params[:query]}%"
		@users = User.where("website_url like ? and description like ? ", query, query  )	
	end

end

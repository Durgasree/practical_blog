class FriendsController < ApplicationController
	def make_a_friend
		@user = User.find_by_id(params[:user_id])
		@user.friends.create(friend_id: params[:friend_id] )
		redirect_to users_path
	end
end

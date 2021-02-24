class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path
  	else
  		@errors = @user.errors.full_messages
  		render new_user
  	end
  end

  def new
  	@user = User.new
  end

  def friends
    @user = User.find_by_id(params[:user_id])
    @friends = @user.friends&.includes(:user).map(&:user).uniq
  end

  private

  def user_params
  	params.require(:user).permit(:name,:title,:website_url,:description)
  end

end

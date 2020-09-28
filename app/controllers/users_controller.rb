class UsersController < ApplicationController
  def home
  end


  def Add_fl

  	@users = User.where(deleted: false)
  end
  def friend
  	@f_users = User.where(deleted: true)
  end

  def msg
  end

  def destroy
  	 @user =  User.find(params[:id])
  	if @user.update(deleted: true)
  		redirect_to users_Add_fl_path
  	else
  		redirect_to root_path
  	end
  end
end

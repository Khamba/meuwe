class UserController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to success_url
    else
      render :new
    end
  end

  def success
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :college)
    end

end

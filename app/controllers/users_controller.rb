class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save

      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      # For calling a method align the arguments. Look at the course style-guide
      # https://github.com/johnsonchmatc/ruby-style-guide#no-double-indent to see
      # examples of how to do this. The "good" example is what you want to use
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end

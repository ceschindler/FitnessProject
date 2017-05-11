class WorkoutsController < ApplicationController
  def new
    @workout = Workout.new
  end
  
  def show
    @workout = Workout.find(params[:id])
  end
  
  def create
    @workout = Workout.new(workout_params)
    @user = User.find_by(params[:id])
    @user.inspect
    if @workout.save && @user.valid?
      flash[:info] = "Workout has been generated"
      redirect_to @workout
    else
      flash[:info] = "You are not logged in, this workout will not be saved"
      redirect_to @workout
    end
  end
  
  def update
    @workout = Workout.find(params[:id])
    @user = User.find(session[:user_id])
    @workout.update_attribute(:user_id, @user.id)
    redirect_to @user
  end
  
  private
  def workout_params
    params.require(:workout).permit(:category, 
                                    :intensity_level, 
                                    :time)
  end
end

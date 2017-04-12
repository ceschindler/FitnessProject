class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
      render html: "DC Fitness Institute"
  end
  
  def generate_workout
  end

  def display_workout
  end

  def generate_meal
  end

  def user_tracking
  end
  
  def users_new
  end
end

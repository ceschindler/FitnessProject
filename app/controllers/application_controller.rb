class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def hello
      render html: "DC Fitness Institute"
  end
  
  def generate_workout
    render html: 'Hello'
  end

  def display_workout
  end

  def user_tracking
  end
  
  def users_new
  end
end

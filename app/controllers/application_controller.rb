class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
      render html: "DC Fitness Institute"
  end
end

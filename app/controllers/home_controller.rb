class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def home
    render :home
  end
end
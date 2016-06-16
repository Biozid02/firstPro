class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
        @courses = Course.order(:title)
  end

end

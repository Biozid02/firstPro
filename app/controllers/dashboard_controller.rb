class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def enroll

    if params[:vaga].nil?
      redirect_to dashboard_index_path

    else
    course_object = Course.find(params[:vaga][:id])
    current_user.courses << ( course_object - current_user.courses )

    end
  end
end


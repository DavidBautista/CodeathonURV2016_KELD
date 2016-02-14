class DashboardController < ApplicationController

  def index

  end

  def global_ranking
    @users = User.paginate(:page => params[:page], :per_page => 2).order('experience DESC')
  end

end

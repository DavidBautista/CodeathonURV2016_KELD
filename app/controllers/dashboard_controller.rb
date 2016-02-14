class DashboardController < ApplicationController

  helper_method 'ranking_per_page'

  def index

  end

  def global_ranking
    params[:page] ||=1
    @users = User.paginate(:page => params[:page], :per_page => ranking_per_page).order('experience DESC')
  end

  protected
  def ranking_per_page
    20
  end

end

class UserBadgesController < ApplicationController
  before_action :set_user_badge, only: [:show, :edit, :update, :destroy]

  # GET /user_badges
  # GET /user_badges.json
  def index
    @user_badges = UserBadge.all
  end

  # GET /user_badges/1
  # GET /user_badges/1.json
  def show
  end

  # GET /user_badges/new
  def new
    @user_badge = UserBadge.new
  end

  # GET /user_badges/1/edit
  def edit
  end

  # POST /user_badges
  # POST /user_badges.json
  def create
    @user_badge = UserBadge.new(user_badge_params)

    respond_to do |format|
      if @user_badge.save
        format.html { redirect_to @user_badge, notice: 'User badge was successfully created.' }
        format.json { render :show, status: :created, location: @user_badge }
      else
        format.html { render :new }
        format.json { render json: @user_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_badges/1
  # PATCH/PUT /user_badges/1.json
  def update
    respond_to do |format|
      if @user_badge.update(user_badge_params)
        format.html { redirect_to @user_badge, notice: 'User badge was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_badge }
      else
        format.html { render :edit }
        format.json { render json: @user_badge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_badges/1
  # DELETE /user_badges/1.json
  def destroy
    @user_badge.destroy
    respond_to do |format|
      format.html { redirect_to user_badges_url, notice: 'User badge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_badge
      @user_badge = UserBadge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_badge_params
      params.require(:user_badge).permit(:unlocked_date, :badge_id, :user_id, :exam_id, :notified)
    end
end

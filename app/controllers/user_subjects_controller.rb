class UserSubjectsController < ApplicationController
  before_action :set_user_subject, only: [:show, :edit, :update, :destroy]

  # GET /user_subjects
  # GET /user_subjects.json
  def index
    @user_subjects = UserSubject.all
  end

  # GET /user_subjects/1
  # GET /user_subjects/1.json
  def show
  end

  # GET /user_subjects/new
  def new
    @user_subject = UserSubject.new
  end

  # GET /user_subjects/1/edit
  def edit
  end

  # POST /user_subjects
  # POST /user_subjects.json
  def create
    @user_subject = UserSubject.new(user_subject_params)

    respond_to do |format|
      if @user_subject.save
        format.html { redirect_to @user_subject, notice: 'User subject was successfully created.' }
        format.json { render :show, status: :created, location: @user_subject }
      else
        format.html { render :new }
        format.json { render json: @user_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subjects/1
  # PATCH/PUT /user_subjects/1.json
  def update
    respond_to do |format|
      if @user_subject.update(user_subject_params)
        format.html { redirect_to @user_subject, notice: 'User subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_subject }
      else
        format.html { render :edit }
        format.json { render json: @user_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subjects/1
  # DELETE /user_subjects/1.json
  def destroy
    @user_subject.destroy
    respond_to do |format|
      format.html { redirect_to user_subjects_url, notice: 'User subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subject
      @user_subject = UserSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_subject_params
      params.require(:user_subject).permit(:user_id, :subject_id, :role)
    end
end

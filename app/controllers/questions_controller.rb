class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @exam = Exam.find(params[:exam_id])
    @question = Question.new(exam_id: params[:exam_id])
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)
    @question.sender = current_user
    if @question.save
      redirect_to overview_exam_path(@question.exam), notice: _('Question was successfully sent.')
    else
      @exam = question.exam
      render :new
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    if @question.update(question_params)
      redirect_to overview_exam_path(@question.exam), notice: _('Question was successfully updated.')
    else
      render :edit
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @exam = @question.exam
    @question.destroy
    redirect_to overview_exam_path(@exam), notice: _('Question was successfully updated.')

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:exam_id, :question, :correct_answer, :answer_1, :answer_2, :answer_3, :description)
    end
end

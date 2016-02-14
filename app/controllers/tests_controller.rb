class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def start_test
    exam_id = params[:exam_id]
    questions = Question.where(exam_id: exam_id).limit(20).order("RAND()")
    test = Test.create(exam_id: exam_id, user: current_user, special:false, obtained_experience: 0)
    index = 1
    questions.each do |question|
      TestQuestion.create(test: test, question: question, order:index, answer: 0)
      index += 1
    end
    redirect_to present_test_question_path(test_id: test.id, order: 1)
  end

  def finish_test
    @test = Test.find(params[:test_id])

  end

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:user_id, :exam_id, :special, :obtained_experience)
    end
end

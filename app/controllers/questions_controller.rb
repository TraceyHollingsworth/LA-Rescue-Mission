class QuestionsController < ApplicationController

  # GET /questions
  def index
    @questions = Question.all.order( 'questions.created_at DESC' )
    # order(:created_at)
  end

  # GET /questions/1
  def show
    @question = Question.find(params[:id])
    @answer = Question.find(params[:id])
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      flash[:notice] = @question.errors.full_messages.join(". ")
      render action: 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    Question.destroy(params[:id])
    # Question.answers.destroy(params[:question_id])
    redirect_to :action => "index"
  end

  # GET /questions/search
  def search
    @questions = Question.search(params[:query])
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def question_params
    params.require(:question).permit(:title, :description)
  end
end

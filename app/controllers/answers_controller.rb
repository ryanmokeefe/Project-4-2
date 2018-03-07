class AnswersController < ApplicationController
    
    def index
        @answers = Answer.all
    end

    def show
        @answer = Answer.find(params[:id])
    end

    def new
        @question = Question.all        
        @answer = Answer.new
    end

    def create
        @answer = Answer.create!(answer_params)
        redirect_to answer_path(@answer)
    end

    def edit
        @question = Question.all                
        @answer = Answer.find(params[:id])
    end

    def update
        @answer = Answer.find(params[:id])
        @answer = Answer.update(answer_params) 
        redirect_to answer_path(@answer) 
    end

    def destroy
        @answer = Answer.find(params[:id])
        @answer.destroy
        redirect_to answers_path
    end

    private
    def answer_params
        params.require(:answer).permit(:title, :body, :question_id)
    end

end

class QuestionsController < ApplicationController
  def ask
    # @questions = [ 'hello', 'What time is it?']
    # raise
    # if params[:questions]
    #   @questions = @questions.select { |question| question.include?(params[:questions]) }
    # end
  end

  def answer
    @question = params[:user_question]
     if @question.downcase == "I am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
     end
  end
end

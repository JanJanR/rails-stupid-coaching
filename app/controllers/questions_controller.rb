class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @result = nil
    if @question == 'I am going to work'
      @result = 'Great!'
    elsif @question.include?('?')
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end

# case @question
# when @question == "I am going to work" then "Great"
# when @question.include? "?" then "Silly question, get dressed and go to work!"
# else "I don't care, get dressed and go to work!"

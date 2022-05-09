class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input_questions = params[:question]
    @answer =
      if @input_questions == 'I am going to work'
        'Great!'
      elsif @input_questions.end_with?('?')
        'Silly question, get dressed and go to work!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end

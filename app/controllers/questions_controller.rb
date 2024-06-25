class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = coach_answer(@questions)
  end

  private

  def coach_answer(question)
    if question.end_with?('?')
      "Silly question, get dressed and go to work!"
    elsif question.include?('I am going to work')
      "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

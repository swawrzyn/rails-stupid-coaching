class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params['question'].casecmp('i am going to work').zero?
      @answer = 'Great!'
    elsif params['question'][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

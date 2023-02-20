class PagesController < ApplicationController
  def ask

  end

  def answer
    @message = params[:message]
    correct_message = 'I am going to work'
    if @message == correct_message || @message == correct_message.upcase || @message == correct_message.downcase
      @message_to_print = 'Great!'
    elsif @message.include?('?')
      @message_to_print = 'Silly question, get dressed and go to work!'
    else
      @message_to_print = "I don't care, get dressed and go to work!"
    end
  end
end

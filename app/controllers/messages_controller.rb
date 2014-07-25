class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
  end


  private

  def message_params
    params.
      require(:message).
      permit(:body)
  end
end

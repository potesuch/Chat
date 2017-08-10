class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new(message_input)

    @message.save

    redirect_to action: "index"
  end

  private
    def message_input
      params.require(:message_input).permit(:name, :text)
    end
end

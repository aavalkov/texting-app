class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new(to: params[:to])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(messages_params)
    if @message.save
      redirect_to messages_path
    else
      render 'new'
    end
  end

  def show
  end

private
  def messages_params
    params.require(:message).permit(:to, :from, :body)
  end


end

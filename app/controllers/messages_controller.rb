class MessagesController < ApplicationController
  before_filter :authenticate_user!, only: [:index, :create, :edit, :update]

  def index
    @messages = Message.all
    @message = Message.new(to: params[:to])
  end

  def new
    @message = Message.new
  end

  def create
    @contacts = params[:message][:contact_ids]
    @contacts.pop
    @contacts.each do |id|
      @contact = Contact.find(id)
      params[:message][:to] = @contact.number
      @message = Message.new(messages_params)
        if @message.save
          flash[:notice] = "Message sent to #{@contact.name}"
        else
          flash[:notice] = "Something went wrong... please check that all fields are valid"
        end
    end
    redirect_to root_path
  end

  def show
  end

private
  def messages_params
    params.require(:message).permit(:to, :from, :body, :contact_ids)
  end


end

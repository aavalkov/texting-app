class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render 'new'
    end
  end


    private
      def contact_params
        params.require(:contact).permit(:name, :number, :user_id)
      end
end

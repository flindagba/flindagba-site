class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :letter_opener]
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      sleep 1
      flash[:notice] = 'Merci pour votre message!'
      redirect_to root_path
    else
      flash.now[:error] = "Désolé nous n'avons pas pu envoyer le mail"
      render :new
    end
  end
end

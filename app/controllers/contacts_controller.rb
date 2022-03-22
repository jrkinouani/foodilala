class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Mail reçu, Marhaba!'
    else
      flash.now[:error] = 'Recommencez, votre mail ne passe pas !'
      render :new
    end
  end
end

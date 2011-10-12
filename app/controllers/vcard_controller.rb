class VcardController < ApplicationController
  
  def index
    @title = "Don Pottinger vBusiness Card"
    @name = "Don Pottinger"
    @contact = Contact.new
  end
  
  def contact
    
    @contact = Contact.new(params[:contact])
    
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver

      render 'contact.js.haml'
    else
      render 'error.js.haml', :locals => { :item => @contact }
    end
    
  end
  
end

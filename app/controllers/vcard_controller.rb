class VcardController < ApplicationController
  
  def index
    @title = "Don Pottinger vBusiness Card"
    @name = "Don Pottinger"
  end
  
  def contact
#$name = stripslashes($_POST['name']);
#$email = trim($_POST['email']);
#$subject ="Contact Form Submission";
#$message = htmlspecialchars($_POST['message']);

  @name = params[:name]
  @email = params[:email].strip    
#  @subject = "Contact Form Submission"
  @message = params[:message]
  
  ContactMailer.contact_email(@name, @email, @message).deliver

  respond_to do |format|
    format.js { render 'contact' }
  end
  
  end
end

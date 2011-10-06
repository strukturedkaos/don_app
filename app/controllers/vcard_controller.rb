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
  @email = params[:email]    
  @subject = "Contact Form Submission"
  @message = params[:email]

  respond_to do |format|
    format.js { render :msg => "OK" }
  end
  
  end
end

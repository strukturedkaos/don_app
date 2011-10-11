class ContactMailer < ActionMailer::Base
  default :from => "contact@donapottinger.com"
  
  def contact_email(name, email, message)
    @name = name
    @message = message
    mail(:to => "don.pottinger@gmail.com", :from => email, :subject => "Contact Form Submission")
  end
end

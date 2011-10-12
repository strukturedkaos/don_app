class ContactMailer < ActionMailer::Base
  default :to => "don.pottinger@gmail.com"
  
  def contact_email(contact)
    @contact = contact
    mail(:from => @contact.email, :subject => "Contact Form Submission")
  end
end

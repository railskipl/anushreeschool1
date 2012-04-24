class HomeController < ApplicationController
  def index
  end
def contact
      if request.post? and params[:reset_password]
            if contact = Contact.new(params[:reset_password])

              contact.name = "#{params[:reset_password][:name]}"
              contact.email = "#{params[:reset_password][:email]}"
              contact.subject = "#{params[:reset_password][:subject]}"
              contact.message = "#{params[:reset_password][:message]}"
              contact.save


              UserMailer.registration_confirmation(contact).deliver     
              flash[:notice] = "Thank You for contacting us. We will reach you back shortly."
              redirect_to("/contacts")

            end
         else
           @title = "contacts"
         end
  end
end

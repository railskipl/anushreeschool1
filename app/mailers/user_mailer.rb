class UserMailer < ActionMailer::Base
  default from: "anushreekunal@gmail.com"
  
     def registration_confirmation(user)
 
      @contact = user
      mail(:to => "anushreekunal@gmail.com", :subject => user.subject )
  end
end

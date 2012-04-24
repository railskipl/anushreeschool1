class ContactsController < ApplicationController
  
   def index
      @contacts = current_user.contacts.find(:all)
    end

    def new
      @contact = current_user.contacts.new
    end

    def create
      @contact = current_user.contacts.new(params[:contact])
      respond_to do |format|
    if @contact.save
      UserMailer.registration_confirmation(@contact).deliver
      format.html { redirect_to(@contact, :notice => 'contacts was successfully created.') }
      format.xml { render :xml => @contact, :status => :created, :location => @contact }
    else
      format.html { render :action => "new" }
      format.xml { render :xml => @contact.errors, :status => :unprocessable_entity }
    end
  end
end

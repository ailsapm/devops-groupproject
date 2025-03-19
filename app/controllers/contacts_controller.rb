class ContactsController < ApplicationController
    # run  set_contact method before show/update/delete to set @contact to relevant id
    before_action :set_contact, only: [:show, :update, :destroy]
       
    # get all contacts
    def index
        @contacts = Contact.all
         render json: @contacts
      end
       
    # get contact by ID
    def show
        render json: @contact
    end
       
    # create new contact
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
        render json: @contact, status: :created
        else
        render json: @contact.errors, status: :unprocessable_entity
        end
    end
       
    # update existing contact
    def update
        if @contact.update(contact_params)
        render json: @contact
        else
        render json: @contact.errors, status: :unprocessable_entity
        end
    end
       
    # delete contact
    def destroy
        @contact.destroy
        render json: { message: 'Contact deleted successfully' }, status: :ok
    end
       
    # not needed outside of this class, so safer to keep them only accessible here
    private
       
    # set contact by ID
    def set_contact
        @contact = Contact.find(params[:id])
    end
       
    # permitted params for contact
    def contact_params
        params.require(:contact).permit(:firstname, :lastname, :email, :homephone, :mobile, :address, :birthday)
    end
end


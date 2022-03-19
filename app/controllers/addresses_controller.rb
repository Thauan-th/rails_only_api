class AddressesController < ApplicationController
    before_action :set_phones
    def show
        render json: @address
    end
    private
    def set_phones
        @address = Contact.find(params[:contact_id]).address
    end
end
  
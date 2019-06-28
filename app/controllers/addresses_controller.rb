class AddressesController < ApplicationController
  def new
    @address = Address.new
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
    @address = Address.new(address_params)
    @address.client_id = current_client.id
    @address.save
    redirect_to client_path(current_client.id)
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to client_path(current_client.id)
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to client_path(current_client.id)
  end

  private
  def address_params
    params.require(:address).permit(:client_id,:tel_number,
      :postal_code,:address,:to_name,:to_name_kana)

  end
end

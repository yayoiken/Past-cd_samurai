class ClientsController < ApplicationController
  before_action :authenticate_client!

  def show
    @client = Client.find(params[:id])
    @addresses = Address.where(client_id: current_client.id)
  end

  def edit
  end

  def update
  	
  end
  

  def destroy
  	
  end

  def withdrawal
  end

  def ordered
  end

  private
  def client_params
    params.requie(:client).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :birthday, :gender)
  end

end

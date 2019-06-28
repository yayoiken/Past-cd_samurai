class ClientsController < ApplicationController
  before_action :authenticate_client!

  def show
<<<<<<< HEAD
    @client = Client.find(params[:id])
    @addresses = Address.where(client_id: current_client.id)
=======
    @clients = Client.find(params[:id])
>>>>>>> 1329387be89d350a00954d0f22509cbaedb191bf
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

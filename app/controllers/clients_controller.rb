class ClientsController < ApplicationController
  before_action :authenticate_client!

  def show
    @clients = Client.find(params[:id])
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

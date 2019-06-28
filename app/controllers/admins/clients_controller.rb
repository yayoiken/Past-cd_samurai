class Admins::ClientsController < Admins::ApplicationController
  before_action :authenticate_admin!
  
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
  end

  def update
  	
  end
  

  def destroy
   @clients = Client.find(params[:id])
   @clients.destroy
   redirect_to admins_clients_path
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

class ClientsController < ApplicationController
  before_action :authenticate_client!

  def show
    @client = Client.find(params[:id])
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
end

class ClientsController < ApplicationController
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

class HomeController < ApplicationController
  def top
  	@client = current_client
  end
end

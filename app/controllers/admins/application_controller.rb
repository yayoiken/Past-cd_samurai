class Admins::ApplicationController < ApplicationController
 before_action :authenticate_admin!

  def after_sign_in_path_for(resource)
  	case resource
     when admin
      admins_products_path(resource)
    end
  end

  def after_sign_out_path_for(resource)
   case resource
    when admin
     admins_path
    end
  end

end
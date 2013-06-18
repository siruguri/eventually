class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    logger.info "Caught acception in CanCan"
    if request.env.key? "HTTP_REFERER"
      redirect_to :back, :alert => exception.message
    else
      redirect_to root_url, :alert => exception.message
      # render :text => "#{exception.message}"
    end
  end  
end

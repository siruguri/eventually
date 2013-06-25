module Api
  class ApiController < ApplicationController
    def current_ability 
      @current_user= current_user
      Rails.logger.info("Obtaining ability for #{@current_user.id}")
      @current_ability ||= Ability.new(@current_user)
    end

    private
    def current_user
      @current_user ||= User.find(doorkeeper_token.resource_owner_id)
    end
  end
end

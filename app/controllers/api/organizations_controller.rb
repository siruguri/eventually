module Api
  class OrganizationsController < ApplicationController

    respond_to :json

    def index
      respond_with Organization.all
    end

  end
end


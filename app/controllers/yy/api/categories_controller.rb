require_dependency "yy/application_controller"

module Yy
  class Api::CategoriesController < ApplicationController
    respond_to :json

    def index
      respond_with Category.all
    end
  end
end

module Api
  module V1
    class KindsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        kinds = Kind.select('id, name, type_id')
        hash = { :kinds => kinds }
        render :json => hash
      end
    end
  end
end
module Api
  module V1
    class KindsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        @kinds = Kind.all
        render json: @kinds
      end
    end
  end
end
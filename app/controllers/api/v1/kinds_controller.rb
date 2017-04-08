module Api
  module V1
    class KindsController < ApplicationController
      include Authentication

      before_action :authenticate

      def index
        @kinds = Kind.all
        j = @kinds.to_json(only: [:id, :name, :type_id])
        render json: j
      end
    end
  end
end
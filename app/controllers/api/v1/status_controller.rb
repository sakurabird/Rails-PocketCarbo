require 'json'

module Api
  module V1
    class StatusController < ApplicationController
      include Authentication
      before_action :authenticate

      # 初期投入のjsonファイルを更新したらsettings.ymlのdata_versionをインクリメントすることを忘れないようにする
      def data_version
        json = {}
        json['version'] = Settings.foods.data_version
        render :json => json
      end
    end
  end
end

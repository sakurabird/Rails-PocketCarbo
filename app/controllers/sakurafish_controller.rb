class SakurafishController < ApplicationController

  def show
    render template: "sakurafish/#{params[:sakurafish]}"
  end
end

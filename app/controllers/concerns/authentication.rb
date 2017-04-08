module Authentication
  # you might need to include:
  # include ActionController::HttpAuthentication::Token::ControllerMethods

  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      token == ENV['HTTP_HEADER_TOKEN']
    end
  end

  def render_unauthorized
    # render_errors(:unauthorized, ['invalid token'])
    obj = { message: 'token invalid' }
    render json: obj, status: :unauthorized
  end

end

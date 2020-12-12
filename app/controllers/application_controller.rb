class ApplicationController < ActionController::API
# reference: nyc-dumbo-web-120919 > 49-custom-routes
# why am I copying this boilerplate?
# this is all JSON Web Token Auth stuff that I don't want to rewrite
# Willy Wonka thing below I probably need to rewrite tho lol
  def encode_token(payload)
    JWT.encode(payload, 'willy Wonkas secret recipe')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'willy Wonkas secret recipe', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end

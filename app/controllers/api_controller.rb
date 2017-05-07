class ApiController < ActionController::Base
  def require_token_authentication
    authenticate_token || render_unauthorized("Access denied")
  end

  def current_user
    @current_user ||= authenticate_token
  end

  protected

  def render_unauthorized(message)
    errors = { errors: [ { detail: message } ] }
    render json: errors, status: :unauthorized
  end




  private

  def authenticate_token
  	# authenticate_with_http_token - встроенная в ActionController ф-ция
  	# сама выцепляет токен из Authorization HTTP заголовка
    authenticate_with_http_token do |token, options|
      #  период устаревания токена - 1 минута	
     if user = User.with_unexpired_token(token, 1.minutes.ago)
        ActiveSupport::SecurityUtils.secure_compare(
                        ::Digest::SHA256.hexdigest(token),
                        ::Digest::SHA256.hexdigest(user.token))
        user
      end
    end   
  end

end



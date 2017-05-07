class User < ApplicationRecord
  has_secure_password
  has_secure_token

  # 1ая проверка - есть такой user по данному email
  # 2ая проверка - хэш предоставленного пароля совпадает с хэшем в БД
  def self.valid_login?(email, password)
    user = find_by(email: email)
    if user && user.authenticate(password)
      user
    end
  end

  # ф-ция вызывается при начальном создании токена
  # дальнейший ее вызов пересоздает 24-char random string
  def allow_token_to_be_used_only_once
  	regenerate_token
  	touch(:token_created_at)
  end

  # выход пользователя
  def logout
  	invalidate_token
  end

  def self.with_unexpired_token(token, period)
  	where(token: token).where('token_created_at >= ?', period).first
  end

  private
   # This method is not available in has_secure_token
  def invalidate_token
  	update_columns(token: nil) # поле в БД становится = NULL
  	touch(:token_created_at)   # создаем новый таймстемп
  end	


end

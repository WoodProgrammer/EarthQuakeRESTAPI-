class AuthenticationController < ApplicationController
  def authenticate_user
    user = User.find_for_database_authentication(email: params[:email])

    if user.nil?
      render json: {hata: "Mail girinişinizi ve değerlerinizi kontrol ediniz."}
    else
      if user.api_jwt_key.nil?
          if user.valid_password?(params[:password])
             data=payload(user)
             key =  update_database(user)
             user.update(api_jwt_key: update_database(user))
             #render json: update_database(user)
             @data=update_database(user)
             @email=user.email
          else
            render json: {errors: ['Yanlış email ya da parola']}, status: :unauthorized
          end

        else
          render json: {hata: "Siz zaten bir API ERİŞİM ANAHTARINA SAHİPSİNİZ.",
                        KEY: user.api_jwt_key}
        end
    end

  end

  private

  def payload(user)
    return nil unless user and user.id
    {
      auth_token: JsonWebToken.encode({user_id: user.id})
    }
  end
  def update_database(user)
    return JsonWebToken.encode({user_id: user.id})

  end
end

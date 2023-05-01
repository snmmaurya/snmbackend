class Api::V1::UsersController < Api::V1::BaseController
  def registration
    user = UserService.new.registration registration_params
    render json: Oj.dump(Mappers::Users::UserMapper.new.show(user))
  end

  private

  def registration_params
    params.require(:user).permit(:first_name, :last_name, :email, :mobile_number, :password, :password_confirmation, :address)
  end
end

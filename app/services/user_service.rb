class UserService
  def initialize

  end

  def registration registration_params
    user = User.new(registration_params)
    ActiveRecord::Base.transaction do
      if not user.save
        raise ApiExceptions::StandardApiError.new(user.errors.full_messages.first, 422)
      end
    end
    if user.persisted?
      # send email and message to verification
      # email verified, mobile_number verified
      user
    end
  end
end

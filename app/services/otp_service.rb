class OtpService
  def initialize; end

  def verify

  end

  def verify!

  end

  def send mobile_number, reason, extras={}
    otp = Otp.create(mobile_number: mobile_number, reason: reason, template: fetch_template)
  end

  def fetch_template reason, extras={}
    case reason

    when "verify_mobile_number"
      "Enter #{OTP} to verify mobile number"
    else
      raise ApiExceptions::InvalidRequestException.new
    end
  end
end

class Mappers::Users::UserMapper
  def show user
    {
      email: user.email,
      mobile_number: user.mobile_number,
      first_name: user.first_name,
      last_name: user.last_name,
      address: user.address,
      status: user.status,
      created_at: user.created_at.to_i*1000
    }
  end

  def list users
    users.map do |user|
      show user
    end
  end
end
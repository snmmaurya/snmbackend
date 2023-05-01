class ApiCustomResponse
  def self.success(message="success")
    {message: message, status: 200, code: 200}
  end

  def self.error(message="error")
    {message: message, status: 422, code: 422}
  end
end
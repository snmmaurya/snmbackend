class User < ApplicationRecord
  has_secure_password
  
  validates :email, :mobile_number, :first_name, presence: true
  validates :password, presence: true, format: {with: PASSWORD_REGEX}, length: {minimum: 8, maximum: 64}
  validates :last_name, presence: true, format: {with: NAME_REGEX}, length: {minimum: 2, maximum: 64}, allow_blank: true
  validates :address, presence: true, format: {with: STRING_REGEX}, length: {minimum: 10, maximum: 132}, allow_blank: true
  validates :email, :mobile_number, uniqueness: true

end

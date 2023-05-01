class Otp < ApplicationRecord
  enum status: {unused: 0, used: 1}
  enum reason: {verify_mobile_number: 0}

  validates :mobile_number, :reason, :otp, :status, presence: true

  before_validation :seed

  def seed
    self.otp = rand.to_s[2..7]
    self.status = :unused
  end
end

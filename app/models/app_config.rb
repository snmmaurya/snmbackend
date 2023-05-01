class AppConfig < ApplicationRecord
  validates :key, :value, presence: true
end

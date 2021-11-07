class ShortenedLink < ApplicationRecord
  validates :original_url, presence: true
  validates :code, uniqueness: true

  before_create do
    self.code = SecureRandom.urlsafe_base64(8) unless self.code.present?
  end
end

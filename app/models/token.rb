class Token < ApplicationRecord
  before_create :generate_token
  belongs_to :user

  def generate_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end
end

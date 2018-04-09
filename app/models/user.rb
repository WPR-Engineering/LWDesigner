class User < ApplicationRecord
  ROLES = %i(admin manager user)
  has_secure_password

  has_many :tokens

  before_validation :set_role
#  before_create :generate_confirm_key

  validates :email, :group, :role, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /@/ }


  private

  def set_role
    self.role = 'admin' unless self.role
  end

  def generate_confirm_key
    begin
      self.confirm_key = SecureRandom.hex
    end while self.class.exists?(confirm_key: confirm_key)
  end
end

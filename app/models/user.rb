class User < ApplicationRecord
  has_secure_password
  has_many :decks

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password_digest, presence: true
  validates :password_digest, length: { minimum:8 }

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end

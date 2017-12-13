class User < ApplicationRecord

  # See http://rubular.com for regex below...
  validates :name, presence: true, length: { maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # TODO.Add uniqueness test
  validates :email, presence: true, length: { maximum: 20 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

  has_secure_password

  # TODO.reactivate password


end


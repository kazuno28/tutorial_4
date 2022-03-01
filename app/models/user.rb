class User < ApplicationRecord
  #before_save { self.email = email.downcase }
  before_save { email.downcase! }
  validates :name,  presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i  #VALID_EMAIL_REGEXは定数。大文字で始まる名前はRubyでは定数を意味する。
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
end

class User < ActiveRecord::Base
  has_secure_password
  # EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  # validates :name, presence: true, length: { in: 2..20 }
  # validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  # validates :password, presence: true, length: { in: 2..20 }
  # validates :password_confirmation, presence: true, length: { in: 2..20 }


  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :name, :presence => true

  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }

  validates :password, :presence => true

end

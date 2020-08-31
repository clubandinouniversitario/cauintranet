class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :lockable
	# Source: https://www.supinfo.com/articles/single/4165-secure-authentication-with-ruby-on-rails
	has_secure_password
  	has_secure_password :recovery_password, validations: false
  	validates :email, presence: true, :uniqueness => true
  	validates :firstname, presence: true, length: { minimum: 2, maximum: 30 }
  	validates :lastname, presence: true, length: { minimum: 2, maximum: 30 }
  	validates :password, length: { minimum: 8 }

end

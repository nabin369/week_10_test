class User < ActiveRecord::Base

	has_secure_password
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 8 }
	validates :password_confirmation, presence: true


end

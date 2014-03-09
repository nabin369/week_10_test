class User < ActiveRecord::Base

	has_secure_password
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 8 }
	validates :password_confirmation, presence: true

	before_save :create_remember_token

	private

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

end

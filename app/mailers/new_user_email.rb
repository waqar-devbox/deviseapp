class NewUserEmail < ApplicationMailer
	def notify_user(user)
		mail(to: user.email, subject: "ALGORITHM BBC CNN")
		#abort()
	end
end

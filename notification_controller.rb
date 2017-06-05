class NotificationController < ApplicationController
	def send_mailerlite
	    mails = Array.new
	    email = Hash.new
	    email["email"] = "ranjith@threesea.in"
	    mails << email
	    result = UserNotification.storesubscriberusersparty(mails)
	    render :json => result
	end
end
